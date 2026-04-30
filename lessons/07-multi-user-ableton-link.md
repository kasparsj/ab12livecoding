# Multi-User Tidal and Ableton Link

Ableton Link is the main timing bridge between TidalCycles, Ableton Live, and
other Link-compatible music software on the same local network. It synchronizes
musical tempo, beat, phase, and optional start/stop commands without choosing a
single master clock. Each participant keeps its own timeline, but Link keeps
those timelines musically aligned. ([Ableton Link][1])

For live coding classes and jams, this means several Tidal users can join the
same local network, enable Link, and automatically perform against the same
tempo grid. Ableton Live can join the same session, so Tidal patterns can stay
in time with Live clips, scenes, drum racks, external instruments, or recording
sessions. ([Tidal Cycles][2], [Ableton Live Manual][3])

## Version Check

Tidal's Link story has changed across versions:

```text
Tidal 1.0.11-1.8  -> Carabiner bridge setup
Tidal 1.9         -> native Ableton Link integration, enabled by default
Tidal 1.10        -> native Link integration, disabled by default
```

In Tidal 1.10, enable Link from the boot file by uncommenting the
`streamEnableLink tidal` line, or enable it from a boot environment that exports
the newer helper:

```haskell
enableLink
```

The older Carabiner setup is still important historically and is useful when
reading old setup notes, but modern Tidal teaching should start with native
Link. ([Tidal Cycles][2], [Sound.Tidal.Boot][7])

## Native Link Setup

Use this for current Ableton/Tidal synchronization.

1. Put all performers and Ableton machines on the same local network. Wired
   ethernet is best for workshops and shows; Wi-Fi can work but is easier to
   disrupt.
2. In Ableton Live, open Link/Tempo/MIDI preferences, enable "Show Link Toggle",
   then turn on Link in Live's control bar. Live shows the number of other Link
   peers when it has connected. ([Ableton Live Manual][3])
3. In Tidal 1.10, enable Link in `bootTidal.hs` with `streamEnableLink tidal`,
   or evaluate `enableLink` if your boot environment exposes it.
4. Start a simple Tidal pattern and a simple Live clip. Change tempo in Live or
   in another Link participant and confirm that the others follow.

Tidal automatically discovers other Link peers once Link is enabled. That is
the behind-the-scenes multi-user feature: each live coder's Tidal joins the same
Link session, shares the timing grid, and can keep playing independently while
tempo changes propagate to the group. This does not share code, samples, audio,
or pattern state; it shares musical time.

## Beats Per Cycle

Ableton Live thinks in BPM: beats per minute. Tidal thinks in CPS: cycles per
second. Link shares a beat timeline, so Tidal needs to know how many Link beats
belong inside one Tidal cycle.

For normal 4/4 teaching, use four beats per cycle:

```text
120 BPM / 60 seconds / 4 beats per cycle = 0.5 CPS
```

In Tidal's native Link configuration this is `cBeatsPerCycle`, and the default
is `4`. The docs recommend starting with the same value for `cQuantum`, because
Link uses quantum, measured in beats, for bar or loop-boundary phase alignment.
([Tidal Cycles][2], [Ableton Link][1])

```haskell
tidal <- startTidal superdirtTarget
  (defaultConfig {cQuantum = 4, cBeatsPerCycle = 4})
```

Use other values when the music asks for them:

```text
4 beats per cycle  -> one 4/4 bar per Tidal cycle
3 beats per cycle  -> one waltz-like 3/4 bar per Tidal cycle
2 beats per cycle  -> a compact two-beat cycle
```

For a waltz-oriented class example:

```haskell
tidal <- startTidal superdirtTarget
  (defaultConfig {cQuantum = 3, cBeatsPerCycle = 3})
```

## Carabiner Bridge Setup

Older Tidal versions used Carabiner as a bridge between Tidal and Ableton Link.
This is the source of the often-copied command:

```haskell
sock <- carabiner tidal 4 (-0.14)
```

Read it like this:

```text
4       beats per Tidal cycle
-0.14   latency adjustment, in seconds
```

The `4` is the same concept as native `cBeatsPerCycle`: it converts between
Link's BPM world and Tidal's CPS world. The Tidal docs explicitly note that you
might prefer `2`, or `3` for a waltz. The `-0.14` value is a starting latency
offset; every audio interface, buffer size, and routing path can require a
different value. ([Tidal Cycles][2], [TidalCycles userbase][4])

Minimal old-style test:

```haskell
sock <- carabiner tidal 4 (-0.14)

d1 $ s "cp bd bd bd"
```

Then change the tempo in Ableton Live or another Link app. In the older
Carabiner setup, changing BPM from Tidal used:

```haskell
sendMsg sock "bpm 155"
```

After changing the Carabiner beat or latency numbers, restart Tidal. The old
docs note that those startup values were not live-editable in that setup.

## Aligning Latency

Link aligns musical time, but it does not know the real audio latency of every
device, buffer, DAW, interface, and speaker path. Tidal's docs recommend
measuring the audible offset with a slow click pattern.

```haskell
setcps 0.25

d1 $ s "cp"
```

If Tidal sounds late against Live, test a positive `nudge`:

```haskell
d1 $ s "cp" # nudge 0.05
```

If Tidal sounds early, test a negative `nudge`:

```haskell
d1 $ s "cp" # nudge (-0.05)
```

For native Link, once a good `nudge` value is found, make it permanent by
adjusting `oLatency` in the opposite direction. Tidal's docs call this out
because `nudge` moves events later, while `oLatency` schedules events earlier.
([Tidal Cycles][2])

## Cycle Alignment

Link aligns beat and phase, but it does not guarantee that every Tidal instance
has the same cycle number. The official Link docs describe this as independent
timelines: participants can be beat-aligned while their absolute beat values
are offset. Tidal's multi-user docs make the same point for Tidal cycle values.
([Ableton Link][1], [Tidal Cycles][2])

For a class or ensemble that needs everyone to start from the same cycle
position, count in and run this together:

```haskell
resetCycles
```

After that, use shared phrase lengths such as 4, 8, or 16 cycles so that live
transitions land on predictable musical boundaries.

## Ableton Sync Checklist

Use this when pairing Tidal with Ableton Live:

```text
Same local network
Ableton Link toggle visible and enabled
Tidal Link enabled
cBeatsPerCycle matches the musical meter
cQuantum starts equal to cBeatsPerCycle
Simple click pattern tested before complex patterns
Latency measured with nudge, then moved into oLatency
resetCycles used if everyone needs the same cycle count
```

## Teaching Line

Link is the shared timing layer. Ableton Live, Tidal, and every other
participant can agree on tempo and phase while keeping their own performance
independent. The most important teaching number is beats per cycle:

```text
BPM -> Link beats -> Tidal cycles
```

For most Ableton sync lessons, start with:

```text
4 beats per cycle
cQuantum = 4
cBeatsPerCycle = 4
```

Then show that changing the `4` to `3` makes Tidal's cycle match a waltz-like
bar, while Ableton still sees an ordinary Link beat grid.

## Further Reading

- [Tidal multi-user docs][2]: native Link, Carabiner, latency, and cycle
  alignment.
- [Ableton Link concepts][1]: tempo, beat alignment, phase, quantum, and
  start/stop.
- [Ableton Live manual][3]: how to enable Link and how Live behaves in a Link
  session.
- [Tidal Link scheduler article][5]: why Tidal moved Link into its scheduler.
- [Tidal DAW page][6]: broader routing context for Ableton and other DAWs.

[1]: https://ableton.github.io/link/ "Link Documentation | Ableton"
[2]: https://tidalcycles.org/docs/configuration/multiuser-tidal/ "Multi-User Tidal | Tidal Cycles"
[3]: https://www.ableton.com/en/live-manual/11/synchronizing-with-link-tempo-follower-and-midi/ "Synchronizing with Link, Tempo Follower, and MIDI | Ableton Live Manual"
[4]: https://userbase.tidalcycles.org/Link_synchronisation.html "Link synchronisation | TidalCycles userbase"
[5]: https://tidalcycles.org/blog/link_as_scheduler/ "How Link became Tidal's scheduler | Tidal Cycles"
[6]: https://tidalcycles.org/docs/configuration/MIDIOSC/connecting_to_a_daw/ "DAW | Tidal Cycles"
[7]: https://hackage-content.haskell.org/package/tidal-1.10.1/docs/Sound-Tidal-Boot.html "Sound.Tidal.Boot | Hackage"
