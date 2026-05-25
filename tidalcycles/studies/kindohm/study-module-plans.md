# Kindohm Themed Study Module Plans

These module plans translate recurring ideas from `kindohm/365tidalpatterns`
into curriculum-ready studies. Each module can become a lesson sidebar, a lab,
or an extension workshop.

---

## Study 1 - Daily Pattern Practice

**Theme:** Build a reusable livecoding vocabulary through small daily sketches.

**Source references:**

- `readme.md`
- `patterns-001-100/pattern001.tidal`
- `patterns-301-400/pattern365.tidal`

**Learning outcomes:**

- Explain how a daily archive differs from a polished set file.
- Create one small sketch with a clear anchor and one transformation idea.
- Refactor a sketch into a reusable template.

**Curriculum placement:** Rhythm sidebar or capstone preparation.

**Planned deliverables:**

- `studies/kindohm/tidal/kindohm-01-daily-sketch-and-reuse.tidal`
- Assignment option: five daily sketches from one starting rhythm.
- Instructor note on naming and archiving short `.tidal` files.

**Exercise sketch:**

1. Start with one drum anchor.
2. Add one melodic or textural layer.
3. Add one periodic transformation.
4. Save the file with a date or sequence number and a one-line comment about the idea.

---

## Study 2 - Transformation Chains

**Theme:** `every`, `whenmod`, `foldEvery`, offsets, `rev`, and `iter` can carry the form.

**Source references:**

- `patterns-001-100/pattern001.tidal`
- `patterns-101-200/pattern125.tidal`
- `patterns-401-500/pattern416.tidal`

**Learning outcomes:**

- Build a readable chain of transformations.
- Distinguish periodic changes from random changes.
- Debug a dense line by removing transformations one at a time.

**Curriculum placement:** Rhythm extension or arrangement lab.

**Planned deliverables:**

- `studies/kindohm/tidal/kindohm-02-transformer-chains.tidal`
- Mini-reference: "one base pattern, one transformation at a time."
- Assignment: make a chain and annotate what each link does.

**Exercise sketch:**

1. Write a simple `sound "bd [sn cp] hh*4"` loop.
2. Add `every 4 rev`.
3. Add `every 3 (0.25 <~)`.
4. Add `whenmod 8 6 (trunc 0.5)`.
5. Remove each transformation and describe the musical loss.

---

## Study 3 - Transformation Menus

**Theme:** A transformation list can behave like a rotating arrangement engine.

**Source references:**

- `patterns-001-100/pattern093.tidal`
- `patterns-101-200/pattern150.tidal`
- `patterns-401-500/pattern402.tidal`

**Learning outcomes:**

- Use `slowspread` or explicit section alternatives to rotate through transformations.
- Build variation without editing the base pattern.
- Compare random variation with ordered transformation menus.

**Curriculum placement:** Performance extension.

**Planned deliverables:**

- Included inside `kindohm-02-transformer-chains.tidal`.
- Optional advanced note on version compatibility for `slowspread`.
- Assignment: design a four-item transformation menu.

**Exercise sketch:**

1. Choose four transformations: `id`, `rev`, `slow 2`, `jux rev`.
2. Apply them to one pattern over time.
3. Replace one item with a parameter change.
4. Decide which transformation is safe enough for a live set.

---

## Study 4 - Sample-Index Machines

**Theme:** Separate sample family, sample index, and rhythmic structure.

**Source references:**

- `patterns-001-100/pattern050.tidal`
- `patterns-001-100/pattern084.tidal`
- `patterns-201-300/pattern250.tidal`

**Learning outcomes:**

- Explain `samples "name*8" (run 8)` as a sample-index scanner.
- Translate custom sample families into stock sample sets.
- Pattern sample selection separately from rhythm.

**Curriculum placement:** Sampling and effects lab.

**Planned deliverables:**

- `studies/kindohm/tidal/kindohm-03-sample-index-machines.tidal`
- Stock-sample replacement guide.
- Assignment: scan a sample family and then limit it to the best 3-5 sounds.

**Exercise sketch:**

1. Scan `drum`, `feel`, or `arpy` with `run`.
2. Slow down the index pattern.
3. Replace the scan with a curated index list.
4. Layer a stable kick/snare underneath.

---

## Study 5 - Break Slicing and Glitch Gestures

**Theme:** Use time-local transformations to turn loops into fills, breaks, and texture.

**Source references:**

- `patterns-001-100/pattern025.tidal`
- `patterns-001-100/pattern040.tidal`
- `functions.tidal`

**Learning outcomes:**

- Use `striate`, `chop`, `stut`, `trunc`, `smash`, and `within`.
- Keep glitch gestures bounded to one time region.
- Design a fill that returns to the groove.

**Curriculum placement:** Sampling lab or transition lab.

**Planned deliverables:**

- Included inside `kindohm-04-time-effects-and-sections.tidal`.
- Instructor warning about gain and density.
- Assignment: build a four-bar groove with one controlled glitch event.

**Exercise sketch:**

1. Make a stable loop.
2. Apply `striate` to one copy.
3. Use `within` to limit the transformation.
4. Use `whenmod` to place the gesture every 8 or 16 cycles.

---

## Study 6 - Modulation as Motion

**Theme:** Slow control patterns create motion even when rhythm stays fixed.

**Source references:**

- `patterns-001-100/pattern034.tidal`
- `patterns-301-400/pattern325.tidal`
- `patterns-401-500/pattern432.tidal`

**Learning outcomes:**

- Use `range`, `sine`, `tri`, and `slow` to animate controls.
- Pattern `cutoff`, `resonance`, `delaytime`, `delayfeedback`, `pan`, and `shape`.
- Separate rhythmic variation from timbral variation.

**Curriculum placement:** Modulation lab.

**Planned deliverables:**

- `studies/kindohm/tidal/kindohm-04-time-effects-and-sections.tidal`
- Mini-reference: common modulation targets and safe ranges.
- Assignment: same rhythm, three modulation versions.

**Exercise sketch:**

1. Keep one hi-hat pattern fixed.
2. Modulate pan slowly.
3. Modulate filter cutoff slowly.
4. Add delay modulation only after gain is controlled.

---

## Study 7 - Periodic Section Logic

**Theme:** Use cycle-count conditions to create sections, fills, dropouts, and returns.

**Source references:**

- `patterns-201-300/pattern225.tidal`
- `patterns-301-400/pattern365.tidal`
- `patterns-401-500/pattern453.tidal`

**Learning outcomes:**

- Use `whenmod` to place a section change.
- Use `const` to replace a layer during a window.
- Build a short arrangement from repeated conditional rules.

**Curriculum placement:** Arrangement and final performance.

**Planned deliverables:**

- `studies/kindohm/tidal/kindohm-04-time-effects-and-sections.tidal`
- Capstone option: daily-pattern performance with one fill and one dropout.
- Rehearsal checklist for conditional changes.

**Exercise sketch:**

1. Build a four-layer `stack`.
2. Add a fill every 8 cycles.
3. Drop out one layer every 16 cycles.
4. Add a planned ending with `hush`.

---

## Study 8 - Melody and Hardware Translation

**Theme:** Translate hardware-specific melodic streams into stock Tidal note examples.

**Source references:**

- `scales.tidal`
- `patterns-401-500/pattern441.tidal`
- `patterns-401-500/pattern443.tidal`

**Learning outcomes:**

- Map generated numbers into a scale using stock `scale` or `toScale`.
- Translate MIDI stream names like `keys`, `bass`, or `brute` into `d1`/`d2` examples.
- Keep hardware setup as optional discussion, not a beginner dependency.

**Curriculum placement:** Chords/arpeggios or advanced extension.

**Planned deliverables:**

- `studies/kindohm/tidal/kindohm-05-melody-and-hardware-translation.tidal`
- Hardware-to-stock translation checklist.
- Assignment: convert one MIDI-style idea into a stock synth pattern.

**Exercise sketch:**

1. Start with `n (scale "minor" "0 2 4 7")`.
2. Replace fixed notes with `run`, `choose`, or `slow` index patterns.
3. Add register movement.
4. Add a drum layer using the same section logic.
