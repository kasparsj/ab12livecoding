# Tidal Version Compatibility

These study files are written as stock-friendly teaching scripts, but a few
functions vary by TidalCycles version, BootTidal setup, or SuperDirt sample
library.

## Check Before Class

| Function or feature | Used in | Risk | Fallback |
| --- | --- | --- | --- |
| `slowspread` | Kindohm transformation menus | Older or newer local setup may not expose it. | Use the manual menu states already included in the file. |
| `foldEvery` | Kindohm transformation chains | May be unavailable in older setups. | Stack separate `every` calls. |
| `mask` | ndr-brt probability/rhythm logic | Syntax may differ by version. | Use explicit silence in mini-notation. |
| `slice` | ndr-brt one-sample and live-set files | Some samples do not slice clearly. | Use `chop` or `striate`. |
| `gap`, `chew`, `bite` | ndr-brt stock-dense transformation chains | Availability can vary across older Tidal setups. | Use `chop`, `slice`, `striate`, or remove the local transform. |
| `rinse` local helper | ndr-brt control/sieves/timbre file | This is a local translation of an ndr-brt helper and depends on `loopAt`, `struct`, and reverse playback behavior. | Use a plain `slow`/`rev` special-effect layer. |
| `hcutoff` | ndr-brt stock-dense timbre examples | Parameter availability can vary. | Use `cutoff` and `resonance`, or remove the high-pass color. |
| `superpiano` | Melody studies | May not be installed in all SuperDirt setups. | Use `arpy`, `gtr`, or `bass`. |
| `samples` | Kindohm sample-index file | Some setups prefer `n` plus `sound`. | Use the `n (run 8) # sound "name*8"` examples. |
| `p` named patterns | Remix-performance skeleton | Some students only know `d1`-`d4`, and older BootTidal setups may differ. | Use the fallback note in the file and map stems to `d1`-`d4`. |
| `loopAt` | Remix-performance skeleton | Loop behavior depends on sample length and local Tidal/SuperDirt behavior. | Use slower repeated stock phrases or user-owned loops with known lengths. |
| `jux` | Remix-performance and album template gestures | Stereo or drift behavior can be confusing on mono or unusual output setups. | Evaluate the untransformed pattern first, then add `jux` only if it helps. |
| `cF`, `cI` | MIDI hardware performance | Controller input requires Tidal OSC/control setup; absent controls use defaults. | Keep the default values in examples and run stock fallback blocks first. |
| `midichan`, `ccn`, `ccv`, `s "mydevice"` | MIDI hardware performance | MIDI output requires SuperDirt MIDI setup and a configured device. | Treat MIDI lines as optional comments; use stock sample blocks as primary material. |
| `struct` boolean gates | Drum structures and MIDI hardware performance | Students may confuse gate syntax with sample mini-notation. | Verify one small gate first, then apply it to stock sounds. |
| Old Tidal MIDI APIs | RISC Chip, Expedition, and older source archives | Historical imports, old MIDI APIs, and device streams are not portable to current class setups. | Study them as documentation only; do not import old MIDI modules into course files. |
| `Sound.Tidal.Drum.*` imports | `lvm/tidal-drum-patterns` source | Package imports are avoided locally because the source package is GPL-3 and has package import assumptions and setup risks. | Use the local `struct` translations in `drum-structures/` instead of importing the package. |
| Jarmlib BootTidal wrapper | Optional Jarmlib integration notes | Vendored Jarmlib is LGPL-covered, personal, and not required by course examples. | Use the standard course BootTidal path unless explicitly testing the optional wrapper. |
| TidalCycles 0.8 archival code | RISC Chip hardware album notes | Old source code is historical and not realistic modern classroom code. | Treat it as production documentation, not runnable material. |

## Tempo Convention

Use the course convention from the main lessons:

```tidal
setcps (bpm/60/beatsPerCycle)
```

Avoid changing global tempo inside a dense teaching block unless the block is
explicitly about tempo.

The new runnable study files use this course-style `setcps` convention. If a
source repository uses a private `bpm` helper, old `bps` metadata, or historical
tempo setup, translate it back to `setcps` in local teaching code.

For the ndr-brt study, the source helper `bpm b = setcps (b/2/120)` is
equivalent to `setcps (b/60/4)`, so the local files keep four beats per cycle
and offer source-like BPM values as commented `setcps` lines.
