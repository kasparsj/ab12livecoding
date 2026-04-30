# Alex McLean: Tidal 2.0 beatMode

Alex McLean's "Tidal 2.0 beatMode" post is useful because it names a
tension that students feel early: Tidal is cycle-oriented, but many musicians
arrive with a beat-grid or DAW timeline in mind. The proposal is not simply
"Tidal with BPM." It is a Tidal 2.0 design experiment where existing
cycle-oriented transformations can coexist with a new beat-oriented sequence
model. ([Alex McLean][1])

Treat `beatMode` as research vocabulary, not as stable classroom syntax for
current Tidal releases. The teaching value is the contrast:

```text
cycle-oriented Tidal  -> patterns fill and transform cycles
beat-oriented mode    -> finite sequences align and combine by steps/beats
```

## Current Tidal Model

Current Tidal documentation is explicit: Tidal measures time in cycles per
second, not directly in beats per minute. A cycle repeats forever, and patterns
divide that cycle. ([Tidal Cycles][2])

```haskell
setcps (120/60/4)

d1 $ s "bd sn hh cp"
```

With the common 4/4 teaching convention, this maps 120 BPM onto one Tidal
cycle containing four perceived beats. But the mapping is a convention. The
pattern still fills one cycle; adding more symbols makes smaller divisions
inside that cycle rather than extending the timeline. ([Tidal Tutorial][4])

```haskell
d1 $ s "bd sn"
d1 $ s "bd sn hh cp"
d1 $ s "bd sn hh cp mt arpy"
```

All three examples are cycle-sized unless another time transformation changes
them.

This follows Tidal's deeper pattern model. Internally, a pattern can be
understood as a function queried over a span of time, returning events active
within that span. Transformations such as `rev`, `fast`, and `slow` operate on
that cyclic time model. ([Tidal Innards][5])

## What beatMode Changes

In McLean's Tidal 2.0 sketch, `beatMode` points to a second kind of musical
object: a finite, beat-oriented sequence. In the May 2023 post, he describes
Tidal 2.0 as having two sides:

```text
Signal    -> cycle-oriented, like the older Pattern representation
Sequence  -> beat-oriented, finite, countable, structurally inspectable
```

Both would share behavior through a more abstract `Pattern` typeclass, so many
familiar operations could work across both representations. The user-facing
point is that code may look similar while the time behavior changes. In
cycle-oriented Tidal, reversing a pattern reverses material inside each cycle.
In beat mode, McLean says the whole sequence is reversed instead. ([Alex
McLean][1], [Tidal 2.0 discussion][6])

That difference is the lesson.

```haskell
-- Current cycle-oriented expectation:
d1 $ rev $ s "bd sn hh cp"
```

Read this as: reverse the pattern inside the cycle.

The beatMode idea asks a different question: what if the thing being reversed
is a finite sequence of steps, and then that sequence is aligned back into
Tidal's signal/cycle world?

The community discussion gives a concrete way to hear the contrast:

```text
cycle-oriented: operations line up by cycle structure
beat-oriented:  operations line up by sequence position, wrapping as needed
```

That tends to make cycle-oriented Tidal naturally strong for polyrhythm, while
beat-oriented sequences make polymeter and stepwise alignment easier to talk
about. ([Tidal 2.0 discussion][6])

## Cycle Thinking vs Beat Thinking

Use this before introducing beatMode:

```haskell
setcps (120/60/4)

d1 $ s "bd sn hh cp"
d2 $ fast 2 $ s "hh cp"
d3 $ every 4 rev $ s "bd sn hh cp"
```

Teaching reading:

```text
setcps (120/60/4)     -> four perceived beats per cycle
s "bd sn hh cp"       -> four events distributed over one cycle
fast 2                -> two cycles of the pattern fit where one did
every 4 rev           -> every fourth cycle is transformed
```

The important correction is that "every 4" means every four cycles, not
automatically every four beats. If one cycle is being treated as a four-beat
bar, then `every 4` feels like every four bars. Change the beats-per-cycle
mapping and the musical interpretation changes.

Strudel's cycle explanation is useful as a parallel source for this point: a
cycle can be heard as beats or bars depending on how many events and perceived
beats are placed inside it, but the system itself still works in cycles.
([Strudel][7])

## Why McLean Wanted This

The beatMode thread connects to a larger rewrite practice in McLean's work:
rewrite the system to discover what the older design made easy, difficult, or
invisible. In "Alternate Timelines for TidalCycles," McLean describes Tidal's
development as guided by use and by rewrites rather than by a fixed original
specification. The beatMode work fits that method: try a different time model
and learn what musical interfaces it affords. ([Alternate Timelines][8])

The motivating musical problem is not that cycles are wrong. It is that some
musical tasks are awkward when everything is a cycle-shaped signal:

```text
beatwise addition and subtraction
step-by-step melodic manipulation
polymetric sequences of different lengths
alignment of finite sequences before combining them
collaboration with beat-grid tools and Link-based sessions
```

McLean's post also points toward Carnatic-style beat manipulation and formal
sequence alignment as possible payoffs. That is a useful framing for students:
beatMode is about expanding what Tidal can represent, not replacing the cycle
model that gives Tidal its character. ([Alex McLean][1])

## Link, DAWs, and the Beat Grid

Beat thinking is also practical when Tidal plays with Ableton Live or other
Link-compatible systems. Ableton Link synchronizes tempo, beat alignment,
phase, and optionally start/stop. It does not require every application to use
the same internal timeline; each participant maps the shared beat timeline
into its own model. ([Ableton Link][9])

For current Tidal, that mapping is still "beats per cycle":

```text
BPM -> Link beats -> Tidal cycles
```

For most 4/4 examples:

```haskell
setcps (bpm/60/4)
```

In Link configuration terms, the same teaching number appears as beats per
cycle or quantum. This is why the `beatMode` discussion belongs near the CPS
lesson and the Link lesson: it explains why syncing to a beat grid is not the
same as making Tidal itself beat-oriented.

## Classroom Exercises

First, make the cycle model explicit:

```haskell
setcps (120/60/4)

d1 $ s "bd sn hh cp"
d2 $ s "hh*8"
```

Ask students to describe where the cycle begins, how many perceived beats it
contains, and why `hh*8` does not create an eight-beat bar by itself.

Then contrast cycle transformations:

```haskell
d1 $ every 4 rev $ s "bd sn hh cp"
d2 $ every 3 (fast 2) $ s "hh cp"
```

Ask:

```text
What repeats every cycle?
What changes every three or four cycles?
If one cycle equals one bar, how many bars pass before the change?
```

Finally, introduce the beatMode research question:

```text
What would reverse mean if this were a finite sequence of steps?
What would combine mean if two sequences had different lengths?
What musical ideas become easier if the system can count sequence positions?
What musical ideas become easier if the system ignores sequence length and
works cyclically?
```

Students do not need a working Tidal 2.0 build to learn from the question.
They need to hear the difference between transforming a cycle-shaped signal and
transforming a finite beat sequence.

## Practical Takeaway

For current lessons, keep the rule simple:

```text
Cycle is the unit Tidal transforms.
Beat is a mapping choice.
```

Use `setcps (bpm/60/beatsPerCycle)` to connect Tidal to BPM thinking. Use
Ableton Link when multiple beat-based systems need to agree on tempo and
phase. Use the `beatMode` research discussion to explain why some operations
feel natural in Tidal and others feel like they want a sequence model.

## Further Reading

- Alex McLean's original `beatMode` post: the primary source for the
  TidalCycles vs TidalBeats framing.
- Tidal cycles and performance docs: current behavior for CPS, cycles,
  `setcps`, `resetCycles`, `qtrigger`, and timing.
- Tidal 2.0 community discussion: useful explanations of Signal vs Sequence
  and how beat-oriented behavior might differ.
- "Alternate Timelines for TidalCycles": broader research context for rewrites
  as a way of discovering new musical programming models.
- Strudel cycle docs: a clear companion explanation for students who are
  learning cycles through a Tidal-descended system.
- Ableton Link docs: the clearest source for beat, phase, and quantum
  synchronization language.

[1]: https://slab.org/2023/05/13/tidal-2-0-beatmode-tidalcycles-vs-tidalbeats/ "Tidal 2.0 beatMode - Alex McLean"
[2]: https://tidalcycles.org/docs/reference/cycles/ "Cycles | Tidal Cycles"
[3]: https://tidalcycles.org/docs/reference/performance/ "Performance | Tidal Cycles"
[4]: https://tidalcycles.org/docs/getting-started/tutorial/ "Tutorial | Tidal Cycles"
[5]: https://tidalcycles.org/docs/innards/what_is_a_pattern/ "What is a pattern? | Tidal Cycles"
[6]: https://uzu.lurk.org/t/tidal-2-0/4247?page=2 "Tidal 2.0? discussion"
[7]: https://strudel.cc/understand/cycles/ "Understanding Cycles | Strudel"
[8]: https://arxiv.org/abs/2209.04289 "Alternate Timelines for TidalCycles"
[9]: https://ableton.github.io/link/ "Link Documentation | Ableton"
