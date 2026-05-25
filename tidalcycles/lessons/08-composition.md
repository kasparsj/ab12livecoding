# Composition

Composition in Tidal means deciding when musical material appears, disappears,
returns, and changes role. Short patterns are still useful, but this lesson
turns them into a repeatable form.

The official composition reference focuses on three long-form tools:
`ur`, `seqP`, and `seqPLoop`. Use them when comments and manual pattern changes
are no longer enough to remember the arrangement. ([Tidal Cycles][1])

## Three Levels of Form

| Tool | Best for | Time model |
| --- | --- | --- |
| comments and manual changes | live sketches and rehearsal cues | performer memory |
| `ur` | repeating sections made from named patterns | loop length plus section names |
| `seqP` / `seqPLoop` | absolute start and end points | scheduled cycle ranges |

Start manually. Move to `ur` when you have named sections. Move to `seqP` when
the exact entry and exit cycle matters.

## Named Sections with `ur`

`ur` lets you build a larger pattern from a table of named patterns. The
reference type is:

```haskell
ur
  :: Time
  -> Pattern String
  -> [(String, Pattern a)]
  -> [(String, Pattern a -> Pattern a)]
  -> Pattern a
```

Read the four arguments as:

```text
loop length -> section plan -> named patterns -> named transformations
```

This 12-cycle form plays three four-cycle sections:

```haskell
let sections =
      [ ("intro", s "bd ~ bd ~" # gain 0.9)
      , ("lift",  stack [s "bd*4", s "hh*8" # gain 0.45])
      , ("break", s "cp*4" # room 0.4 # gain 0.75)
      ]
in
d1 $ ur 12 "intro lift break" sections []
```

The section plan has three names. Because the whole loop is 12 cycles, each
name gets four cycles. This is the main mental model: `ur` stretches the section
plan across the loop length.

Use a transformation table when the same section should sometimes appear in a
modified state:

```haskell
let sections =
      [ ("intro", s "bd ~ bd ~" # gain 0.9)
      , ("lift",  stack [s "bd*4", s "hh*8" # gain 0.45])
      , ("break", s "cp*4" # room 0.4 # gain 0.75)
      ]
    moves =
      [ ("wide", (# room 0.8 # size 0.9))
      , ("double", fast 2)
      ]
in
d1 $ ur 16 "intro lift:wide break:double lift" sections moves
```

Names before the colon choose the pattern. Names after the colon choose the
transformation.

## Multiple Parts in One Section

The section plan can also schedule several named patterns together. Put them in
mini-notation brackets with commas:

```haskell
let parts =
      [ ("drums", s "bd [~ sn] bd [cp sn]")
      , ("hats",  s "hh*8" # gain 0.4)
      , ("bass",  n "c2 ~ eb2 g2" # s "superpiano" # gain 0.65)
      ]
    moves =
      [ ("open", (# cutoff 5000))
      , ("up", (|+ n "12"))
      ]
in
d1 $ ur 12
  "drums [drums,hats] [drums,hats,bass:up] [drums,bass:open]"
  parts
  moves
```

Use this for arrangement states: drums alone, drums plus hats, full section,
then reduced section.

## Scheduled Ranges with `seqP`

`seqP` sequences patterns by start and end cycle:

```haskell
seqP :: [(Time, Time, Pattern a)] -> Pattern a
```

Each tuple means:

```text
(start cycle, end cycle, pattern)
```

This builds a 16-cycle arrangement where layers enter at cycles 0, 4, 8, and
12, then all stop at cycle 16:

```haskell
d1 $ qtrigger $ seqP
  [ (0, 16, s "bd ~ bd ~")
  , (4, 16, s "hh*8" # gain 0.4)
  , (8, 16, n "c2 eb2 g2 bb1" # s "superpiano" # gain 0.65)
  , (12, 16, s "cp*8" # gain 0.7 # room 0.5)
  ]
```

`qtrigger` starts the scheduled pattern from the next cycle boundary. Without
it, a `seqP` pattern may be silent if Tidal's cycle clock has already moved past
the listed end cycles. The official reference also mentions resetting the cycle
clock with `resetCycles` as another way to audition absolute schedules.
([Tidal Cycles][1])

## Looping a Schedule with `seqPLoop`

Use `seqPLoop` when the scheduled form should repeat after the final end point:

```haskell
d1 $ qtrigger $ seqPLoop
  [ (0, 8,  s "bd ~ sn ~")
  , (2, 8,  s "hh*8" # gain 0.35)
  , (4, 8,  n "c3 eb3 g3 bb2" # s "superpiano" # gain 0.55)
  , (6, 8,  every 2 rev $ s "cp*4" # room 0.5)
  ]
```

The end of the latest range becomes the loop boundary. In this example the
schedule loops every eight cycles.

## Choosing the Right Tool

Use `ur` when the composition reads like a set list:

```text
intro -> groove -> break -> groove with effect
```

Use `seqP` when the composition reads like a timeline:

```text
cycle 0: drums
cycle 4: hats enter
cycle 8: bass enters
cycle 12: clap fill enters
cycle 16: stop
```

Use `seqPLoop` when that timeline should keep repeating while you rehearse,
record, or improvise on other streams.

## Practice

1. Write three one-cycle patterns named `intro`, `groove`, and `break`.
2. Put them into `ur 12 "intro groove break"`.
3. Add one transformation named `wide` and apply it to the break.
4. Rewrite the same form with `seqP`, using start points 0, 4, and 8.
5. Change `seqP` to `seqPLoop` and improvise on `d2` while the form repeats.

## Reading Order

1. Composition docs: `ur`, `seqP`, and `seqPLoop`.
2. Transitions docs: use `jump`, `xfade`, `wait`, and fades for live changes
   around a composed form. ([Tidal Cycles][2])
3. Performance topic file: arrangement states and transition helpers.

[1]: https://tidalcycles.org/docs/reference/composition/ "Composition | Tidal Cycles"
[2]: https://tidalcycles.org/docs/reference/transitions/ "Transitions | Tidal Cycles"
