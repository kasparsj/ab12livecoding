# Drum Structures Research Summary

Source:
[`lvm/tidal-drum-patterns`](https://github.com/lvm/tidal-drum-patterns)

## Repository Material Inspected

- `README.md` - presents the package as Haskell modules of drum patterns and
  shows the main use pattern: import a module, take each instrument role as a
  `Pattern Bool`, then pass it to `struct`.
- `tidal-drum-patterns.cabal` - declares the package as GPL-3, requires
  `tidal >= 1.0`, and exposes hundreds of drum modules.
- `LICENSE` - GPL-3 license text.
- `Sound/Tidal/Drum/All.hs` - module catalog used to list available tracks.
- Representative modules: `FourOnTheFloor`, `Amen`, `Techno`, `Bossa1a`,
  `Funk1a`, `Dnb1a`, `Jungle`, `Irregular1a`, `GhostSnare1a`, and
  `Breakbeat1`.

The local study paraphrases techniques instead of copying upstream modules. It
does not install, import, or vendor the package. The GPL-3 license and
case-sensitive module naming around `HipHop`/`Hiphop` make a stock-sample
translation safer for this curriculum, especially on macOS case-insensitive
filesystems.

## Extracted Teaching Themes

### 1. Instrument Roles As Boolean Gates

The source separates each drum role into a boolean pattern. A kick role, snare
role, closed-hat role, or open-hat role is first a gate, not a sound. `struct`
then applies that gate to a sample, MIDI note, or control pattern.

Teaching translation:

- Keep rhythm variables separate from sample choices.
- Use `t` for a hit and `~` for a rest.
- Route the same gate to different stock samples to hear the difference between
  rhythm and timbre.

### 2. Groove Families As Reusable Structures

The module catalog groups many rhythm families: steady club patterns, breaks,
funk, bossa, jungle, DnB, irregular patterns, and ghost-note sketches.

Teaching translation:

- Teach a small curated set of families instead of mirroring the catalog.
- Let each family become one short classroom card in the `.tidal` atlas.
- Focus on what changes: anchor placement, backbeat, hats, syncopation, and
  ghost density.

### 3. Role Separation From Sample Choice

The source examples show the same boolean roles driving either samples or MIDI.
The important classroom concept is that a groove is portable when the gate
structure is not tied to a specific instrument name.

Teaching translation:

- Use `bd`, `sn`, `hh`, `cp`, and `drum` as the default kit.
- Keep gains conservative while stacking roles.
- Encourage students to swap sample names only after the rhythm is clear.

### 4. `bps` As Tempo Metadata

Many source modules include a `bps` value. That is useful historical metadata
for the source groove, but the local atlas should follow the course tempo
convention.

Teaching translation:

- Use `setcps (120/60/4)` in the atlas.
- Mention source tempo only as research context.
- Avoid per-module tempo dependencies.

### 5. Module Scale And Selection

The source exposes hundreds of modules. That scale is valuable as a catalog,
but too large for one class script.

Teaching translation:

- Curate eight representative structures.
- Keep each section independently evaluable.
- Prefer memorable rhythm families over exhaustive coverage.

## Source Caveats

- The source is a GPL-3 Haskell package.
- The source is a package dependency, not a set of classroom `.tidal` snippets.
- The module catalog includes case-sensitive names that may be awkward on some
  local filesystems.
- The local study uses paraphrased stock-sample examples and no source drum
  module dependency.
