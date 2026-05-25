# CPS vs BPM

TidalCycles does not set tempo directly in beats per minute. It uses
`cps`, or cycles per second. A cycle is the repeating time container that
Tidal patterns fill. In a common 4/4 setup, one cycle is treated as one bar,
so one cycle contains four beats. ([Tidal Cycles][1])

## Conversion

Use this formula when matching Tidal to a DAW tempo:

```text
cps = bpm / 60 / beatsPerCycle
```

For normal 4/4 bar-based thinking:

```text
cps = bpm / 60 / 4
```

Example:

```haskell
setcps (120/60/4)
```

That means:

```text
120 beats per minute
/ 60 seconds
/ 4 beats per cycle
= 0.5 cycles per second
```

So 120 BPM in Ableton maps to `0.5` CPS in Tidal when one Tidal cycle equals
one 4/4 bar. The Tidal performance docs use the same logic for the default
`setcps` value: `135/60/4`. ([Tidal Cycles][2])

## Ableton Link

Ableton Link synchronizes tempo, beat, phase, and start/stop, but each program
still maps that shared beat grid onto its own timing model. Tidal has to know
how many Link beats should fit inside one Tidal cycle. In the multi-user Tidal
setup, the `carabiner tidal 4 (-0.14)` example uses `4` as the beats-per-cycle
value for that mapping. ([Tidal Cycles][5], [Ableton Link][6])

Use a different beats-per-cycle value when the music needs it:

```text
4 beats per cycle  -> one 4/4 bar per Tidal cycle
2 beats per cycle  -> shorter two-beat cycle
3 beats per cycle  -> waltz-like cycle
```

## Pattern Time

Mini-notation patterns are compressed into the current cycle. Adding more
symbols does not make the bar longer; it makes the events inside the cycle
smaller. A pattern such as:

```haskell
s "bd sn hh cp"
```

places four events across one cycle. At `setcps 0.5`, that cycle lasts two
seconds, so the four events line up like four beats at 120 BPM. ([Weird][4])

Strudel uses the same cycle-centered mental model and describes `0.5` CPS as
one cycle every two seconds. With four kicks in that cycle, musicians usually
hear it as 120 BPM. ([Strudel][3])

## Teaching Line

Ableton measures tempo in beats per minute. Tidal measures tempo in cycles per
second. Decide how many beats are in one Tidal cycle, then convert:

```haskell
setcps (bpm/60/beatsPerCycle)
```

For most 4/4 course examples:

```haskell
setcps (120/60/4)
```

## Further Reading

- Tidal Cycles: cycles, `setcps`, performance clocking, and Ableton Link setup.
- Strudel: a clear cycle explanation for students coming from BPM-based tools.
- Alex McLean's writing on beat-oriented and cycle-oriented time models.
- Tidal internals material for pattern querying, arcs, and rational time.

[1]: https://tidalcycles.org/docs/reference/cycles/ "Cycles | Tidal Cycles"
[2]: https://tidalcycles.org/docs/reference/performance/ "Performance | Tidal Cycles"
[3]: https://strudel.cc/understand/cycles/ "Understanding Cycles | Strudel"
[4]: https://weird.one/ctcutler3669/mini-notation "How Mini-notation in Tidal Cycles approaches rhythm"
[5]: https://tidalcycles.org/docs/configuration/multiuser-tidal/ "Multi-User Tidal | Tidal Cycles"
[6]: https://ableton.github.io/link/ "Link Documentation | Ableton"
[7]: https://slab.org/2023/05/13/tidal-2-0-beatmode-tidalcycles-vs-tidalbeats/ "Tidal 2.0 beatMode - Alex McLean"
[8]: https://arxiv.org/abs/2209.04289 "Alternate Timelines for TidalCycles"
[9]: https://mzadel.github.io/tidalfundamentals/ "Learning Tidal Fundamentals"
