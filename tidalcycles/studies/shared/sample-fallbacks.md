# Sample Fallbacks

Use this table when a student's SuperDirt install is missing a sample family.
The fallback should preserve the role of the sound, not the exact timbre.

| Role | Primary sample | Fallbacks | Notes |
| --- | --- | --- | --- |
| Kick / low anchor | `bd` | `kick`, `drum`, `bass` | Keep gain conservative when layering with bass. |
| Snare / backbeat | `sn` | `cp`, `drum`, `sd` | Use `cp` if `sn` is too aggressive. |
| Hat / pulse | `hh` | `hat`, `drum`, `feel` | Lower gain for dense patterns. |
| Clap / accent | `cp` | `sn`, `drum`, `hh` | Good for visible section changes. |
| Melodic texture | `arpy` | `superpiano`, `gtr`, `feel` | If pitch controls do not respond, switch to `superpiano`. |
| Bass voice | `bass` | `bd`, `superpiano`, `arpy` | Use lower `octave` or slower rhythm. |
| Break / loop material | `feel` | `drum`, `breaks125`, `arpy` | Keep sliced layers quiet. |
| Piano / scale demo | `superpiano` | `arpy`, `gtr`, `bass` | `superpiano` may vary by installation. |
| Sample-index scanner | `drum*8` | `feel*8`, `arpy*8`, `bd*8` | Reduce to a curated index list after scanning. |

## Replacement Rule

When replacing a missing source sample, keep three things stable:

1. The rhythmic role.
2. The number of layers.
3. The intended transformation.

Change only the sample name first. Adjust gain after the replacement is audible.
