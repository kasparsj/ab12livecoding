# Conditionals

Tidal conditionals combine three parts:

```text
condition + transformation + pattern
```

They are used for variation, fills, dropouts, and structured changes over
cycles or events.

## Deterministic Cycle Conditions

`every` applies a transformation on a repeating cycle count:
([Tidal Cycles][1])

```haskell
d1 $ every 3 rev $ n "0 1 [~ 2] 3" # s "arpy"
```

This applies `rev` every third cycle. Other cycles play normally.

When the transformation takes arguments, wrap it in parentheses:

```haskell
d1 $ every 3 (fast 2) $ n "0 1 [~ 2] 3" # s "arpy"
```

`when` receives the current cycle number and applies the transformation when
the test returns `True`:

```haskell
d1 $ when ((elem '4') . show) (striate 4) $ s "hh hc"
```

`whenmod` applies a transformation during part of a repeating cycle block:

```haskell
d1 $ whenmod 8 6 rev $ s "bd*2 arpy*2 cp hh*4"
```

Read it as: in each 8-cycle block, apply `rev` when the cycle position is 6
or higher. That gives six normal cycles followed by two transformed cycles.
([Tidal Cycles][3])

## Random Event Conditions

The "sometimes" family applies transformations with different probabilities:
([Tidal Cycles][2])

```haskell
d1 $ sometimes (# crush 2) $ n "0 1 [~ 2] 3" # s "arpy"
```

Common aliases:

```text
always        100%
almostAlways 90%
often         75%
sometimes     50%
rarely        25%
almostNever   10%
never          0%
```

Use `sometimesBy` for an explicit probability:

```haskell
d1 $ sometimesBy 0.35 (# crush 2) $ s "bd sn cp hh"
```

## Event vs Cycle Randomness

`sometimes` works at the event level. It can affect some events and leave
others unchanged:

```haskell
d1 $ sometimes (# crush 2) $ s "bd sn cp hh"
```

`someCycles` works at the cycle level. It transforms whole cycles or leaves
whole cycles unchanged:

```haskell
d1 $ someCycles (# crush 2) $ s "bd sn cp hh"
```

This distinction matters in performance. Use `sometimes` for scattered detail.
Use `someCycles` for larger phrase-level changes.

## Fills and Replacements

Layer conditionals to build fills:

```haskell
d1 $ every 5 (|+| speed "0.5") $ every 4 (0.25 <~) $ every 3 rev $
  s "bd sn arpy*2 cp"
  # speed "[1 1.25 0.75 -1.5]/3"
```

Use `whenmod` for predictable fills:

```haskell
d1 $ whenmod 8 6 rev $ s "bd*2 arpy*2 cp hh*4"
```

Use `const` when the fill should replace the pattern:

```haskell
d1 $ whenmod 8 7 (const $ s "cp*8") $ s "bd sn"
```

## Boolean Pattern Conditions

Conditionals are not limited to "every N cycles." Boolean rhythm patterns can
gate events:
([Tidal Cycles][1])

```haskell
d1 $ struct (every 3 inv "t(3,8)") $ s "cp"
d1 $ mask "t t f t" $ s "bd*8"
```

`struct` applies a true/false rhythm to another pattern. `mask` filters events
through a true/false pattern. `sew` and `stitch` switch between patterns using
boolean conditions.

## Practical Examples

```haskell
-- Reverse every fourth cycle.
d1 $ every 4 rev $ s "bd sn hh cp"

-- Speed up during the second half of each 8-cycle phrase.
d1 $ whenmod 8 4 (fast 2) $ s "bd sn"

-- Choose one transform on even cycles and another on odd cycles.
d1 $ ifp ((== 0) . (`mod` 2)) rev (fast 2) $ s "bd sn cp hh"

-- Add random event-level distortion.
d1 $ sometimes (# crush 2) $ s "bd sn hh cp"

-- Add random cycle-level room.
d1 $ someCycles (# room 0.8) $ s "arpy*8"
```

## Reading Order

1. Conditions docs: `every`, `when`, `whenmod`, `ifp`, `struct`, and `mask`.
2. Randomness docs: `sometimes`, `sometimesBy`, `someCycles`, and `degrade`.
3. Official tutorial: musical fills and layered variation.
4. Learning Tidal Fundamentals: internals for pattern types and APIs.

[1]: https://tidalcycles.org/docs/reference/conditions/ "Conditions | Tidal Cycles"
[2]: https://tidalcycles.org/docs/reference/randomness/ "Randomness | Tidal Cycles"
[3]: https://tidalcycles.org/docs/getting-started/tutorial/ "Tutorial | Tidal Cycles"
[5]: https://mzadel.github.io/tidalfundamentals/ "Learning Tidal Fundamentals"
