# Livecoding Library Design

## Purpose

This guide is for students who are ready to design a small personal helper
layer for Tidal. It is based on
[`jarmitage/jarmlib`](https://github.com/jarmitage/jarmlib), the official
[Tidal Boot File docs](https://tidalcycles.org/docs/configuration/boot-tidal/),
and the course's artist-code translation rules.

The goal is not to hide Tidal behind private vocabulary. The goal is to reduce
repeated typing after the original functions are already understood.

## Source Boundary

Jarmlib is a personal live-coding library licensed as LGPL-3.0-only. This
repository vendors it separately under
[`../../third_party/jarmlib/upstream/`](../../third_party/jarmlib/upstream/).
Jarmlib-derived code remains LGPL-3.0 and cannot be relicensed without separate
permission from the upstream copyright holder.

The normal course examples do not require Jarmlib. Phase 5 does not add OSC,
Bitwig, MIDI, Bela, VST, or custom SuperCollider targets to the default course
environment. The vendored library is optional and documented in
[`jarmlib-full-integration.md`](jarmlib-full-integration.md).

## Source Observations

- `Boot.hs` is a small entrypoint that loads Tidal, targets, stream setup, and
  the helper library.
- `Lib.hs` acts as an import hub for helper modules.
- `Shorthands.hs` collects aliases for common functions, parameters, and
  transitions.
- `Param.hs` groups related controls such as gain/orbit, reverb, delay, filters,
  and sample-window parameters.
- `Signal.hs` builds short names for continuous signals, ranged signals, and
  signal-to-pattern conversions.
- `Harmony.hs` adds key and chord helpers for in-key material.
- `Composition.hs` explores named track helpers and mute/solo operations.
- `Targets.hs` separates output targets from musical helper vocabulary.
- Stream files configure the running Tidal stream and transition helpers.
- MIDI, SuperCollider, VST, Bela, and OSC folders show how personal libraries
  can grow around a specific performance system.
- `Compatibility.hs` keeps old behavior separate instead of scattering
  compatibility work through every helper file.

## Design Principles

Keep the boot file minimal. It should load known modules and set the prompt; it
should not become a pile of unrelated experiments.

Prefer readable shorthands. A short alias is useful when it saves repeated
typing without hiding meaning. `g = gain` is easier to remember than a private
abbreviation that no one else can decode.

Group parameters by performance gesture. Helpers such as gain-plus-orbit or
room-plus-size are useful because they match decisions performers make under
time pressure.

Use continuous-signal helpers only after students understand `range`, `rangex`,
`sine`, `square`, `rand`, and `segment`. A helper should make a known idea
faster, not make an unknown idea invisible.

Keep harmony helpers explicit. Scale and chord helpers are valuable when they
make the musical rule easier to audit during a performance.

Separate composition helpers from sound helpers. Track naming, muting, soloing,
and transitions are arrangement concerns; filters and gain are sound concerns.

Separate targets from musical code. OSC, MIDI, Bitwig, and hardware targets
should be opt-in layers, not assumptions inside every pattern.

Keep compatibility isolated. Deprecated helpers and version shims belong in a
small compatibility file with comments that explain why they exist.

## Classroom-Safe Template

This is a small personal helper file template, not a course dependency:

```haskell
-- personal-helpers.hs
-- Load only after you understand the original Tidal names.

g  = gain
sp = speed
sl = slow
fa = fast

go level bus = gain level # orbit bus
rvb roomAmt sizeAmt = room roomAmt # size sizeAmt
safe = gain 0.65

anchor pat = pat # safe # orbit 0
texture pat = pat # gain 0.35 # orbit 1
```

Keep templates this small at first. Add one helper, use it in a real pattern,
then decide whether it makes the code clearer.

## Adoption Checklist

- Add only 3-6 helpers in the first version.
- Write a comment for every helper that is not obvious.
- Test after each addition by evaluating one known-good pattern.
- Keep the original Tidal names recognizable.
- Avoid aliases for functions students have not learned yet.
- Keep private aliases out of beginner-facing examples.
- Keep hardware, OSC, and custom synth helpers in separate opt-in files.
- Record compatibility risks in
  [`tidal-version-compatibility.md`](tidal-version-compatibility.md).

## What Not To Copy

Do not copy a full personal boot environment into beginner lessons. Do not make
students use private aliases before they can read standard Tidal. Do not enable
Jarmlib's stream, OSC target, Bitwig, MIDI, VST, Bela, or custom SuperCollider
material as a course default.

When using the vendored Jarmlib tree, keep changes separate from upstream code
and record them in
[`../../third_party/jarmlib/AB12KABINETS_CHANGES.md`](../../third_party/jarmlib/AB12KABINETS_CHANGES.md).

## Related Course Material

- [`artist-code-reading-guide.md`](artist-code-reading-guide.md)
- [`tidal-version-compatibility.md`](tidal-version-compatibility.md)
- [`performance-safety-checklist.md`](performance-safety-checklist.md)
- [`../ndr-brt/study-module-plans.md`](../ndr-brt/study-module-plans.md)
- [`../remix-performance/research-summary.md`](../remix-performance/research-summary.md)
