# Tidal Version Compatibility

These study files are written as stock-friendly teaching scripts, but a few
functions vary by TidalCycles version, BootTidal setup, or SuperDirt sample
library.

## Check Before Class

| Function or feature | Used in | Risk | Fallback |
| --- | --- | --- | --- |
| `slowspread` | Kindohm transformation menus | Older or newer local setup may not expose it. | Use the manual menu states already included in the file. |
| `foldEvery` | Kindohm and ndr-brt transformation chains | May be unavailable in older setups. | Stack separate `every` calls. |
| `mask` | ndr-brt probability/rhythm logic | Syntax may differ by version. | Use explicit silence in mini-notation. |
| `slice` | ndr-brt one-sample and live-set files | Some samples do not slice clearly. | Use `chop` or `striate`. |
| `hpf`, `hresonance` | ndr-brt dialect file | Parameter availability can vary. | Use `cutoff` and `resonance`, or remove the filter. |
| `superpiano` | Melody studies | May not be installed in all SuperDirt setups. | Use `arpy`, `gtr`, or `bass`. |
| `samples` | Kindohm sample-index file | Some setups prefer `n` plus `sound`. | Use the `n (run 8) # sound "name*8"` examples. |

## Tempo Convention

Use the course convention from the main lessons:

```tidal
setcps (bpm/60/beatsPerCycle)
```

Avoid changing global tempo inside a dense teaching block unless the block is
explicitly about tempo.
