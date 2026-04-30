# TidalCycles Quick Reference

## Official how-tos used in this course

- [Trigger a pattern from the start](https://tidalcycles.org/docs/patternlib/howtos/startpattern/)
- [Build Rhythms](https://tidalcycles.org/docs/patternlib/howtos/buildrhythms/)
- [Build Arpeggios](https://tidalcycles.org/docs/patternlib/howtos/buildarpeggios/)
- [Play chords](https://tidalcycles.org/docs/patternlib/howtos/playchords/)

## Safe commands

```haskell
hush          -- stop everything
d1 $ silence  -- stop only slot d1
qtrigger      -- start a pattern from the next cycle boundary
trigger       -- trigger a pattern immediately
resetCycles   -- reset Tidal's cycle count
```

## Rhythm basics

```haskell
d1 $ sound "bd sn"                         -- simple sequence
d1 $ sound "bd*2 [~ sn:3]"                 -- repetition, rest, sample number
d1 $ sound "bd*2 [[~ lt] sn:3] lt:1"       -- nested grouping
d1 $ every 2 (0.25 <~) $ sound "bd*2 sn"   -- shifted variation
```

## Chords and arpeggios

```haskell
d1 $ n "c'maj e'min f'maj" # sound "supermandolin"
d1 $ n "c4'maj e4'min f4'maj'o" # sound "superpiano"
d1 $ arp "up" $ n "c'maj'4 e'min'4" # sound "supermandolin"
d1 $ jux rev $ off 0.125 (|+ 7) $ arp "<up down>" $ n "<c'maj'4 e'min'4>" # sound "supermandolin"
```

## Performance reminders

- Start from one rhythm and add layers slowly.
- Prefer small, readable changes while live coding.
- Leave space in the arrangement for contrast and reset points.
- Use transformations to create variation instead of rewriting everything.
- Keep one fallback groove that you can return to safely.


## Broader function coverage

For functions beyond the core path, use [`function-coverage-map.md`](function-coverage-map.md) and the topic files in [`../examples/topics/`](../examples/topics/).

For a compact practice reference, use [`tidalcycles-cheatsheet.md`](tidalcycles-cheatsheet.md).
