# Orbits, Patterns, and One-Shots

This lesson separates three ideas that often get mixed together:

1. where sound is routed (`orbit`)
2. how musical time is represented (`Pattern`)
3. how to fire something once (`once`, `trigger`, `qtrigger`)

## Orbits

Tidal normally sends audio to SuperDirt. A SuperDirt orbit is an audio output
lane with its own global effects and routing. By default, `d1` maps to orbit
`0`, `d2` maps to orbit `1`, and so on. You can also choose an orbit directly:
([Tidal Cycles][1])

```haskell
d1 $ s "bd sn" # orbit 0
d2 $ s "hh*8"  # orbit 1
d3 $ s "arpy"  # orbit 2
```

An orbit is close to a mixer channel with its own signal chain. Global effects
live on that chain, so every pattern routed to the orbit shares them. Normal
effects are requested by individual patterns; global effects are part of the
orbit. ([Tidal Cycles][2], [SuperDirt][3])

## Patterns

A Tidal pattern is a function from time to events. You ask it what is active
over a time span, and it returns the events in that span. The official pattern
docs show `"1 2 3"` as three events across the first cycle:
([Tidal Cycles][5])

```text
0   -> 1/3 : "1"
1/3 -> 2/3 : "2"
2/3 -> 1   : "3"
```

That means a pattern is not a fixed DAW clip. It is a cyclic description of
events over time.

## Mini-Notation

Mini-notation is the compact string syntax used for rhythms, samples, notes,
and parameters. The string is parsed into a pattern. Common forms include:
([Tidal Cycles][6])

```haskell
s "bd sn"             -- two events across one cycle
s "bd [sn cp] hh*2"   -- group and repeat inside the cycle
s "[bd*2, hh*8, cp]"  -- parallel parts inside one pattern
s "bd <sn cp>"        -- alternate sn/cp by cycle
```

Adding more steps compresses more events into the same cycle. It does not
extend the cycle length. Make that cycle model clear before introducing more
complex notation.

## `once`

`once` plays a pattern one time when the line is evaluated:
([Tidal Cycles][10], [Uzu][11])

```haskell
once $ s "bd"
once $ s "bev"
```

It is useful for one-shots, long samples, transitions, background recordings,
and quick checks. It does not wait for the next cycle boundary.

Use `qtrigger` or `mtrigger` when the start needs to align to the cycle grid:
([Tidal Cycles][13])

```haskell
d1 $ qtrigger $ s "bd sn bd sn"
```

Use `trigger` for an immediate start that aligns the pattern's local start to
the evaluation time:

```haskell
d1 $ trigger $ s "bd sn"
```

Use `resetCycles` only when the whole session should restart its cycle count:

```haskell
do
  resetCycles
  d1 $ s "bd sn"
```

That affects all active patterns, so it belongs in deliberate reset moments.

## Practical Rule

- Use `once` for immediate one-shot playback.
- Use `qtrigger` for a clean start on the next cycle boundary.
- Use `trigger` when immediate launch matters more than grid alignment.
- Use `resetCycles` when the entire performance clock should restart.

## Teaching Line

In Tidal, a pattern is a cyclic time function, not a clip. An orbit is the
SuperDirt audio lane where the pattern plays. `once` fires a pattern now;
`qtrigger` starts a pattern cleanly on the cycle grid.

[1]: https://tidalcycles.org/docs/configuration/AudioConfig/audio_outputs/ "Audio Outputs | Tidal Cycles"
[2]: https://tidalcycles.org/docs/configuration/adding_global_effects/ "Adding Global Effects | Tidal Cycles"
[3]: https://s4ntp.org/NTMI/SCHelp/Classes/SuperDirt.html "SuperDirt | SuperCollider Help"
[4]: https://uzu.lurk.org/t/the-routing-structure-of-a-dirt-orbit/3902 "The routing structure of a dirt orbit"
[5]: https://tidalcycles.org/docs/advanced/understanding-innards/What_is_a_pattern/ "What is a pattern | Tidal Cycles"
[6]: https://tidalcycles.org/docs/reference/mini_notation/ "Mini Notation | Tidal Cycles"
[8]: https://mzadel.github.io/tidalfundamentals/ "Learning Tidal Fundamentals"
[9]: https://github.com/tidalcycles/Tidal/blob/dev/old/doc/book/index.md "Old Tidal book"
[10]: https://tidalcycles.org/docs/reference/patterns/ "Patterns | Tidal Cycles"
[11]: https://uzu.lurk.org/t/play-sample-only-once/5011 "Play sample only once"
[12]: https://uzu.lurk.org/t/once-at-beginning-of-cycle/3345 "once at beginning of cycle"
[13]: https://tidalcycles.org/docs/reference/performance/ "Performance | Tidal Cycles"
[14]: https://tidalcycles.org/docs/patternlib/howtos/startpattern/ "Trigger a pattern from the start"
