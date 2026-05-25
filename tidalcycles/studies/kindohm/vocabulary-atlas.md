# Kindohm Vocabulary Atlas

This atlas turns recurring techniques from
[`kindohm/365tidalpatterns`](https://github.com/kindohm/365tidalpatterns)
into classroom vocabulary. The upstream archive uses custom samples, so these
cards describe the technique and point to stock-sample translations in this
study track.

Use this as an instructor reference before opening the runnable `.tidal` files.
For shared safety and compatibility notes, see:

- [`../shared/sample-fallbacks.md`](../shared/sample-fallbacks.md)
- [`../shared/performance-safety-checklist.md`](../shared/performance-safety-checklist.md)
- [`../shared/tidal-version-compatibility.md`](../shared/tidal-version-compatibility.md)

## Daily Sketch Practice

**Source idea:** Treat one short pattern as a complete daily sketch, then reuse
successful gestures in later sketches instead of starting from zero.

**Listen for:** One stable anchor, one new idea, and a clear limit on what
changes between versions.

**Core functions:** `sound`, `n`, `every`, `rev`, `range`, `slow`, `sine`,
`resetCycles`

**Stock teaching translation:**

```tidal
d1 $ sound "bd ~ sn ~" # gain 0.85
d2 $ sound "hh*8" # gain 0.45
d3 $ every 4 rev $ sound "arpy*4" # n "0 2 4 7" # gain 0.55
```

**Use in class:** Ask students to save five tiny sketches from the same seed,
changing only rhythm, sample index, speed, modulation, or section logic.

**Local practice file:** [`tidal/kindohm-01-daily-sketch-and-reuse.tidal`](tidal/kindohm-01-daily-sketch-and-reuse.tidal)

**Source references:** [`readme.md`](https://github.com/kindohm/365tidalpatterns/blob/master/readme.md),
[`patterns-001-100/pattern001.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-001-100/pattern001.tidal),
[`patterns-301-400/pattern365.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-301-400/pattern365.tidal)

## Transformation Chains

**Source idea:** Build form by stacking periodic transformations around a
recoverable base pattern.

**Listen for:** The base groove staying recognizable while order, density,
timing, or phrase length changes.

**Core functions:** `every`, `whenmod`, `foldEvery`, `rev`, `iter`, `density`,
`trunc`, `jux`

**Stock teaching translation:**

```tidal
d1
  $ whenmod 8 6 (trunc 0.5)
  $ every 3 (0.25 <~)
  $ every 4 (jux rev)
  $ sound "bd [sn cp] hh*4"
  # gain 0.75
```

**Use in class:** Add one transformation at a time, then remove each one and
name what musical role disappeared.

**Local practice file:** [`tidal/kindohm-02-transformer-chains.tidal`](tidal/kindohm-02-transformer-chains.tidal)

**Source references:** [`patterns-001-100/pattern001.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-001-100/pattern001.tidal),
[`patterns-101-200/pattern125.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-101-200/pattern125.tidal),
[`patterns-301-400/pattern365.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-301-400/pattern365.tidal)

## `slowspread` Transformation Menus

**Source idea:** Rotate through a list of transformations so one base pattern
can produce a sequence of contrasting states.

**Listen for:** Variation that feels rehearsed because the menu choices are
bounded, even when the exact surface keeps changing.

**Core functions:** `slowspread`, `id`, `rev`, `slow`, `jux`, `density`,
`trunc`

**Stock teaching translation:**

```tidal
d1
  $ slowspread ($) [id, rev, slow 2, jux rev, density 2, trunc 0.5]
  $ sound "bd [sn cp] hh*4"
  # gain 0.75
```

**Use in class:** Compare the automated menu with manual state changes. If
`slowspread` is unavailable, teach the manual alternatives in the local
practice file.

**Local practice file:** [`tidal/kindohm-02-transformer-chains.tidal`](tidal/kindohm-02-transformer-chains.tidal)

**Source references:** [`patterns-001-100/pattern093.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-001-100/pattern093.tidal),
[`patterns-101-200/pattern150.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-101-200/pattern150.tidal),
[`patterns-401-500/pattern402.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-401-500/pattern402.tidal)

## Sample-Index Machines

**Source idea:** Separate the sample family, sample index, and rhythmic
structure so a folder becomes performable material.

**Listen for:** The same rhythm taking on different bodies as the index pattern
moves through a sample family.

**Core functions:** `samples`, `run`, `n`, `sound`, `slow`, `every`, `jux`,
`speed`

**Stock teaching translation:**

```tidal
d1 $ sound "bd ~ sn ~" # gain 0.85
d2 $ n (slow 2 $ run 8) # sound "feel*8" # speed 1.5 # gain 0.45
```

**Use in class:** Start with a full scan, then ask students to curate the best
four indices and layer a stable kick/snare underneath.

**Local practice file:** [`tidal/kindohm-03-sample-index-machines.tidal`](tidal/kindohm-03-sample-index-machines.tidal)

**Source references:** [`patterns-001-100/pattern050.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-001-100/pattern050.tidal),
[`patterns-001-100/pattern084.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-001-100/pattern084.tidal),
[`patterns-201-300/pattern250.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-201-300/pattern250.tidal)

## Bounded Glitch Gestures

**Source idea:** Use slicing, stutter, truncation, and local time windows as
fills or interruptions rather than letting glitch take over the whole groove.

**Listen for:** A short disturbance that returns cleanly to the anchor.

**Core functions:** `within`, `striate`, `stut`, `trunc`, `whenmod`, `rev`,
`gain`

**Stock teaching translation:**

```tidal
d1
  $ whenmod 8 7 (stut 4 0.25 0.6)
  $ sound "bd [sn cp] hh*4"
  # gain 0.75
```

**Use in class:** Place a glitch near the end of a phrase, then practice
recovering by silencing the transformed layer first.

**Local practice file:** [`tidal/kindohm-04-time-effects-and-sections.tidal`](tidal/kindohm-04-time-effects-and-sections.tidal)

**Source references:** [`patterns-001-100/pattern025.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-001-100/pattern025.tidal),
[`patterns-001-100/pattern040.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-001-100/pattern040.tidal),
[`functions.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/functions.tidal)

## Modulation As Motion

**Source idea:** Keep rhythm stable while slow control patterns animate filter,
delay, pan, shape, speed, or other timbral controls.

**Listen for:** Motion that changes the color of a part without changing its
rhythmic job.

**Core functions:** `range`, `slow`, `sine`, `cutoff`, `resonance`, `delay`,
`delaytime`, `delayfeedback`, `pan`

**Stock teaching translation:**

```tidal
d2
  $ sound "hh*8"
  # cutoff (range 800 4500 $ slow 4 sine)
  # resonance 0.15
  # gain 0.4
```

**Use in class:** Keep one rhythm unchanged and make three versions that change
only pan, filter, or delay.

**Local practice file:** [`tidal/kindohm-04-time-effects-and-sections.tidal`](tidal/kindohm-04-time-effects-and-sections.tidal)

**Source references:** [`patterns-001-100/pattern034.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-001-100/pattern034.tidal),
[`patterns-301-400/pattern325.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-301-400/pattern325.tidal),
[`patterns-401-500/pattern432.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-401-500/pattern432.tidal)

## `whenmod` Section Logic

**Source idea:** Use cycle-count conditions to create planned fills, dropouts,
replacements, and returns.

**Listen for:** Section changes that arrive predictably and leave the groove in
a recoverable state.

**Core functions:** `whenmod`, `const`, `trunc`, `stut`, `silence`,
`resetCycles`, `stack`

**Stock teaching translation:**

```tidal
d1
  $ whenmod 16 12 (trunc 0.25)
  $ whenmod 8 7 (stut 4 0.25 0.6)
  $ sound "bd [sn cp] hh*4"
  # gain 0.75
```

**Use in class:** Design a four-layer arrangement with one fill, one dropout,
and one planned ending.

**Local practice file:** [`tidal/kindohm-04-time-effects-and-sections.tidal`](tidal/kindohm-04-time-effects-and-sections.tidal)

**Source references:** [`patterns-201-300/pattern225.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-201-300/pattern225.tidal),
[`patterns-301-400/pattern365.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-301-400/pattern365.tidal),
[`patterns-401-500/pattern453.tidal`](https://github.com/kindohm/365tidalpatterns/blob/master/patterns-401-500/pattern453.tidal)

## Next Related Study

For melody, scale helpers, and hardware-stream translation, continue with
[`tidal/kindohm-05-melody-and-hardware-translation.tidal`](tidal/kindohm-05-melody-and-hardware-translation.tidal).
