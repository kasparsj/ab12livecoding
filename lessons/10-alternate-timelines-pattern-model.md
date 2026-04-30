# Alternate Timelines and Tidal's Pattern Model

This lesson explains Alex McLean's 2021 paper "Alternate Timelines for
TidalCycles" as a practical model for understanding Tidal internals. The goal
is not to teach Haskell for its own sake. The goal is to explain why normal
Tidal code behaves the way it does when patterns are queried, combined,
fragmented, transformed, and parsed from mini-notation.

## Why This Paper Matters

McLean's paper reports on a clean-room rewrite of Tidal's core representation.
Instead of changing the user-facing language first, the rewrite starts from the
inside: what is a pattern, what is an event, and what should happen when two
patterns overlap in time? The paper is available through Zenodo and also has
an arXiv record. ([McLean 2021][1], [arXiv][2])

That makes the paper useful for students because it turns confusing surface
rules into one repeated question:

```text
When two pattern events meet, what span of time is active, and where does the
result's larger structure come from?
```

This is the same question behind:

- why `"2 3" + "4 5 6"` becomes `"6 [7 8] 9"`
- why `#` keeps the rhythm on the left
- why continuous patterns such as `sine` need structure from another pattern
- why mini-notation is fast to type but does not preserve its sequence tree
  after parsing
- why Tidal can be ported into other host languages

## Pattern Is Not A List

The most important idea is that a Tidal pattern is not stored as a fixed list of
events. It is a function-like object that can be asked what events are active
over a span of time. The current `tidal-core` API documents this shape as a
`Pattern` with a `query` field:
([Hackage][6])

```haskell
data Pattern a = Pattern {
  query :: State -> [Event a],
  steps :: Maybe Rational,
  pureValue :: Maybe a
}
```

The `State` contains the requested time arc plus external controls:
([Hackage][6])

```haskell
data State = State {
  arc :: Arc,
  controls :: ValueMap
}
```

For teaching, simplify that to:

```text
Pattern a = a queryable behavior over cyclic time
query pattern time-span = events active in that span
```

This is why Tidal can work with infinite repetition. It does not have to build
all future events. The scheduler repeatedly asks for a small time window, and
the pattern answers for that window. McLean makes the same point in the paper:
the combinators describe behavior first; event matching happens later when the
pattern is actually queried. ([McLean 2021][1])

## Cycles, Arcs, And Queries

Tidal time is measured in cycles. The official docs describe time as cyclical
and subdivisible, not as a linear DAW timeline. A pattern such as:
([Tidal Cycles][3])

```haskell
s "bd hh bd hh"
```

divides one cycle into four equal parts. A pattern such as:

```haskell
s "bd hh hh"
```

divides one cycle into three equal parts. The cycle did not get longer or
shorter; the event layout inside the cycle changed.

The useful internal picture is:

```text
query "1 2 3" over cycle 0-1

0       1/3      2/3       1
|---1---|---2----|---3-----|
```

The official cycle docs show this same basic output shape for `"1 2 3"`:
([Tidal Cycles][3])

```text
(0>1/3)|"1"
(1/3>2/3)|"2"
(2/3>1)|"3"
```

The important habit: read a pattern as a way to answer time-window questions,
not as a row of boxes on a sequencer.

## Events: Whole, Part, Value

Current `tidal-core` describes an event as a value that is active during a time
span. If a `whole` span exists, the active `part` should be equal to it or fit
inside it. ([Hackage][6])

```haskell
data EventF a b = Event {
  whole :: Maybe a,
  part :: a,
  value :: b
}
```

For most musical examples:

```text
whole = the full original event span
part  = the fragment active in this query or combination
value = the sample, note, number, control map, function, etc.
```

Example:

```text
pattern: s "bd*4"
first bd whole: 0-1/4
query window:   0-1/8
active part:    0-1/8
value:          bd
```

This distinction explains why Tidal can split an event without forgetting that
the event came from something larger. It also explains why some continuous
patterns behave differently: an oscillator such as `sine` is not naturally a
sequence of discrete note onsets, so it may need another pattern to provide
event structure. The Uzu discussion of `whole` and `part` is a useful companion
for this section because it explains the same idea from concrete query
examples. ([Uzu][7])

## Structure Comes From Intersections

The official pattern-structure docs use this example:
([Tidal Cycles][4])

```haskell
"2 3" + "4 5 6"
```

The result is equivalent to:

```haskell
"6 [7 8] 9"
```

Draw the two input patterns over the same cycle:

```text
left:   |----2----|----3----|
right:  |--4--|--5--|--6--|
result: |--6--|-7-|-8-|--9--|
```

The middle right-side event, `5`, overlaps the tail of `2` and the start of
`3`, so it is split. That split is the visible surface of the internal model:
events are matched where their active spans intersect.

The paper's rewrite clarifies this by putting Tidal's pattern-combination
operators behind one shared operation. The implementation question becomes:
after two event fragments intersect, which original "whole" should the result
remember? ([McLean 2021][1])

## Left, Right, Or Both

Tidal exposes the "where does structure come from?" question directly through
operators:

- `|+|` or `+`: keep structure from both sides.
  Example: `"2 3" + "4 5 6"` -> `"6 [7 8] 9"`.
- `|+`: keep structure from the left side.
  Example: `"2 3" |+ "4 5 6"` -> `"6 8"`.
- `+|`: keep structure from the right side.
  Example: `"2 3" +| "4 5 6"` -> `"6 7 9"`.
- `|>` or `#`: keep left structure and right values.
  Example: `s "bd sn" # gain "1 0.5"`.

This is the practical bridge from the paper to everyday code. In the rewrite,
McLean compares operators whose "wholes" come from the left, right, or
intersection of both. In current Tidal docs, that same idea appears as
structure from the left, right, or both. ([McLean 2021][1],
[Tidal Cycles][4], [Hackage][6])

Normal performance code usually wants this:

```haskell
d1 $ s "bd sn" # gain "1 0.5"
```

Read it as:

```text
Use the event structure from s "bd sn".
Sample gain values from gain "1 0.5".
Attach the resulting control values to those sound events.
```

This is why swapping the order changes the musical result:

```haskell
d1 $ gain "1 0.5" # s "bd sn"
```

Now the gain pattern is on the left, so it supplies the event structure.

## Patterned Parameters Are Patterns All The Way Down

The paper also explains Tidal's monadic `bind` operations. For a musician, the
important result is simple: Tidal can use events in one pattern to choose or
transform another pattern. This is why many parameters that look like single
numbers can themselves be patterns.

The current API for `fast` takes a `Pattern Time`, not only a plain number:
([Hackage][6], [Tidal Cycles][8])

```haskell
fast :: Pattern Time -> Pattern a -> Pattern a
```

So these both make sense:

```haskell
d1 $ fast 2 $ s "bd sn"
d1 $ fast "2 4" $ s "bd sn kurt cp"
```

In the second line, the speed amount changes inside the cycle. That is not a
special case bolted onto `fast`; it follows from Tidal's deeper rule that the
parameter value can itself be a pattern.

Use the beginner phrase:

```text
In Tidal, a value can usually become a pattern of values.
```

Use the advanced phrase:

```text
Tidal's pattern type supports applicative and monadic composition, so patterns
can contain values, functions, controls, and other patterns.
```

## Mini-Notation Is Parsed, Not Interpreted As Strings

The paper spends a full section on representing sequences because
mini-notation creates a tension in Tidal. It is fast and musical, but once a
mini-notation string is parsed into a pattern, its original metric tree is
mostly hidden inside an opaque time-query function. ([McLean 2021][1])

The official docs make the same surface point: mini-notation is a shortcut that
is parsed into functions you could otherwise write with longer compositions.
([Tidal Cycles][5])

```haskell
s "[bd sd] hh"
```

is a compact way to express grouped pattern behavior. It is not a runtime loop
over a raw string.

McLean's rewrite sketches a possible `Rhythm` type with constructors for atoms,
silence, subsequences, cycle-wise stacks, step-wise stacks, and embedded pattern
transformations. The purpose is to represent the sequence tree more explicitly
before it becomes a time-querying `Pattern`. ([McLean 2021][1])

Teaching distinction:

```text
Sequence representation:
  "Here are the nested steps, groups, stacks, and silences."

Pattern representation:
  "Ask me for a time span and I will return active events."
```

Both are useful. Mini-notation gives a terse sequence language. The internal
pattern model gives the general behavior needed for transformation,
combination, scheduling, and infinite cyclic time.

## The Design-Fiction Syntax

The paper includes this non-current Tidal idea:
([McLean 2021][1])

```haskell
jux <(rev) (iter 4)> $ sound [bd (every 3 (fast 4) [sn])]
```

That is design fiction, not valid Tidal as used in this course. The point is
that beginners often want to mix mini-notation grouping and Tidal functions
more freely than Haskell syntax currently allows.

Read the imagined syntax as:

```text
Use angle brackets for patterned function choice.
Use square brackets for mini-notation-like rhythmic structure.
Use parentheses to jump back into transformations.
```

The research question is not "should students type this today?" The question
is "what representation would make this kind of mixed syntax coherent?"

## Why Ports Became Plausible

One outcome of the rewrite was that Tidal's core became easier to explain and
port. McLean reports that the clarified representation helped with the Python
port codenamed Vortex, despite Tidal's original dependence on Haskell features
such as types, partial application, and inference. ([McLean 2021][1])

The broader lesson is that Tidal is not only a pile of Haskell idioms. Its core
ideas can be named:

- cyclic time
- querying spans for active events
- events with `whole`, `part`, and `value`
- pattern combination by temporal intersection
- explicit choices about left, right, or both structures
- mini-notation as a parsed shorthand for pattern behavior

Those ideas can travel into other languages, even if each host language makes
different tradeoffs.

## Worked Teaching Path

### 1. Start With A Query

Ask students to draw:

```haskell
"1 2 3"
```

over one cycle:

```text
0       1/3      2/3       1
|---1---|---2----|---3-----|
```

Then ask: what events would be active if the scheduler queried only `0` to
`1/2`?

Expected answer:

```text
part of 1: 0-1/3
part of 2: 1/3-1/2
no 3 yet
```

### 2. Split An Overlap

Compare:

```haskell
"2 3" + "4 5 6"
"2 3" |+ "4 5 6"
"2 3" +| "4 5 6"
```

The musical point is not arithmetic. The point is structure:

- `+` / `|+|` lets both structures split the result.
- `|+` keeps the left event layout.
- `+|` keeps the right event layout.

### 3. Explain `#`

Use:

```haskell
d1 $ s "bd sn" # gain "1 0.5 0.8"
```

Ask:

```text
Which pattern decides how many sound events happen?
Which pattern supplies values to those events?
```

Answer:

```text
s "bd sn" decides the sound-event structure.
gain "1 0.5 0.8" supplies gain values sampled onto that structure.
```

### 4. Explain Continuous Modulation

Use:

```haskell
d1 $ s "hh*8" # pan sine
```

The `hh*8` pattern supplies eight discrete events. The `sine` pattern supplies
continuous values that are sampled onto those events. This is why oscillators
are musically useful as controls but usually need another pattern to become
audible events.

### 5. Explain Mini-Notation's Limit

Compare these two teaching statements:

```text
Weak statement:
  "Mini-notation is just a string."

Better statement:
  "Mini-notation is parsed into a pattern, and after parsing Tidal mainly
  keeps the behavior over time, not the original syntax tree."
```

That second statement is the bridge to the paper's proposed sequence
representation.

## Practical Takeaways

- Do not teach Tidal as a fixed piano-roll or step-sequencer list.
- Teach each pattern as a behavior that answers time-span queries.
- Teach event fragments with `whole`, `part`, and `value`.
- Teach `#` as "left structure, right values."
- Teach `|+|`, `|+`, and `+|` as structure choices, not just math operators.
- Teach mini-notation as parsed shorthand for deeper pattern behavior.
- Teach oscillators and random sources as patterns that often borrow structure
  from another pattern.
- When students ask why a result has extra subdivisions, look for event
  intersections.

## Reading Order

1. McLean, "Alternate Timelines for TidalCycles" for the rewrite, applicative
   combination, monadic bind, sequence representation, design-fiction syntax,
   and Vortex discussion.
2. Tidal cycle docs for the musician-facing model of cycles and subdivisions.
3. Tidal pattern-structure docs for the left/right/both operator behavior.
4. Tidal mini-notation docs for the parsed-shorthand model.
5. Current `tidal-core` API docs for `Pattern`, `State`, `Event`, `whole`,
   `part`, `fast`, and `innerJoin`.
6. Tidal time docs for patterned speed amounts such as `fast "2 4"`.
7. Tidal Club / Uzu discussion of `whole` and `part` for an accessible
   explanation of how event fragments affect triggering.

[1]: https://zenodo.org/records/5786103/files/alternate_timelines_mclean.pdf "Alex McLean, Alternate Timelines for TidalCycles"
[2]: https://arxiv.org/abs/2209.04289 "Alternate Timelines for TidalCycles on arXiv"
[3]: https://tidalcycles.org/docs/reference/cycles/ "Cycles | Tidal Cycles"
[4]: https://tidalcycles.org/docs/reference/pattern_structure/ "Pattern Structure | Tidal Cycles"
[5]: https://tidalcycles.org/docs/reference/mini_notation/ "Mini Notation | Tidal Cycles"
[6]: https://hackage-content.haskell.org/package/tidal-core-1.10.1/docs/Sound-Tidal-Pattern.html "Sound.Tidal.Pattern API docs"
[7]: https://uzu.lurk.org/t/what-are-the-part-and-the-whole-in-an-event/4414 "What are the part and the whole in an Event?"
[8]: https://tidalcycles.org/docs/reference/time/ "Time | Tidal Cycles"
