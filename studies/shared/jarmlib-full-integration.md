# Jarmlib Full Integration

This page explains how to try the vendored Jarmlib integration. It is optional,
experimental course infrastructure, not the default way to run the lessons.

## What Was Vendored

Jarmlib is copied under
[`../../third_party/jarmlib/upstream/`](../../third_party/jarmlib/upstream/) at
commit `347a4ca27478cdfaef5d44c540b21683eadc56bf`.

The vendored upstream code remains LGPL-3.0-only. License and notice details
are recorded in:

- [`../../THIRD_PARTY_NOTICES.md`](../../THIRD_PARTY_NOTICES.md)
- [`../../LICENSES/LGPL-3.0.txt`](../../LICENSES/LGPL-3.0.txt)
- [`../../LICENSES/GPL-3.0.txt`](../../LICENSES/GPL-3.0.txt)
- [`../../third_party/jarmlib/UPSTREAM.md`](../../third_party/jarmlib/UPSTREAM.md)
- [`../../third_party/jarmlib/AB12KABINETS_CHANGES.md`](../../third_party/jarmlib/AB12KABINETS_CHANGES.md)

Jarmlib-derived code cannot be relicensed under another license without
separate permission from the upstream copyright holder.

## How To Try It

Start Tidal/GHCI from the repository root, then evaluate:

```haskell
:script third_party/jarmlib/ab12kabinets/Boot.hs
```

The wrapper loads Jarmlib's default SuperDirt target, stream setup, helper
library, and target-dependent helper hooks from the vendored tree. It then
returns the Tidal/GHCI working directory to the course repository root.

## What It Changes

The wrapper loads Jarmlib helpers for shorthands, grouped parameters,
continuous signals, sequences, harmony, composition helpers, MIDI helpers,
miscellaneous utilities, compatibility shims, and scratch/custom parameter
material.

The normal course `.tidal` files do not require these aliases. Use Jarmlib as a
separate advanced environment after you can read the standard Tidal names.

## What It Does Not Enable By Default

The wrapper does not make Jarmlib the course default. It does not update any
lesson, study index, or verification table. It does not enable Bitwig, MIDI,
Bela, VST, LiveCore, Hydra, or custom SuperCollider targets unless a user edits
Jarmlib target files and opts into those systems.

## Risks

- Jarmlib is a personal library, so some helpers assume the author's workflow.
- Some modules reference custom parameters, synthdefs, or external targets that
  may not exist in a classroom setup.
- Aliases can make code faster to type but harder for others to read.
- Compatibility is not guaranteed across current Tidal, SuperDirt, and editor
  setups.

## Modification Rule

Avoid editing files under `third_party/jarmlib/upstream/`. Prefer local wrapper
or note files under `third_party/jarmlib/ab12kabinets/`.

If an upstream file must be changed, record the date, file path, and reason in
[`../../third_party/jarmlib/AB12KABINETS_CHANGES.md`](../../third_party/jarmlib/AB12KABINETS_CHANGES.md).
