# MIDI Hardware Performance Source Map

This map links upstream `kindohm/tidal-meetup-2021-05-08` observations to local
teaching translations. Local files preserve the performance architecture while
keeping runnable examples stock-sample first and hardware-optional.

| Upstream observation | Extracted technique | Local translation |
| --- | --- | --- |
| `readme.tidal` introduces MIDI output through gated notes. | Use `struct` as a hardware-style trigger gate. | `tidal/midi-controller-performance.tidal` starts with stock `struct` examples, then shows a commented generic MIDI equivalent. |
| Source examples route drum roles through MIDI channels. | Treat channel assignments as role mappings. | The local script names stock roles first, then comments equivalent `s "mydevice"` and `midichan` mappings. |
| The source wraps channel mappings in short aliases. | Separate musical role names from output implementation. | Local aliases such as kick, clap, percussion, and hat use stock samples; MIDI role aliases remain optional comments. |
| Source helper code maps drum names to output destinations. | A role-to-target mapper can simplify performance code. | The local study explains the idea in prose and avoids importing or copying the source mapper. |
| `cF` examples drive amplitude and probability. | Continuous controller input can shape level, density, and variation. | The local script uses `cF` with defaults, `range`, `degradeBy`, and `sometimesBy` so it runs without hardware. |
| `cI` examples drive switches and transforms. | Integer controller input can select or toggle performance behavior. | The local script includes a defaulted `cI` transform as an optional controller pattern. |
| The source builds a large pad, kick, clap, percussion, and hat stack. | Compose a hardware set as a set of stable musical roles. | The local performance stack uses `arpy`, `bd`, `cp`, `drum`, and `hh` roles with conservative gains. |
| Source scene examples send CC values to hardware. | CC output can change patches or scenes during performance. | The local script comments a generic `ccn`/`ccv` example and points setup details to the appendix. |
| `superdirt-boot.sc` configures MIDI output and controller forwarding. | SuperDirt setup belongs outside the runnable lesson. | `superdirt-midi-appendix.md` documents generic setup snippets without copying upstream boot code or device names. |

## Local Files

- [`README.md`](README.md) - study overview and usage boundary.
- [`research-summary.md`](research-summary.md) - source observations and
  extracted themes.
- [`superdirt-midi-appendix.md`](superdirt-midi-appendix.md) - generic
  SuperDirt setup notes for MIDI output and controller input.
- [`tidal/midi-controller-performance.tidal`](tidal/midi-controller-performance.tidal)
  - stock-sample performance script with optional MIDI comments.

## Translation Notes

- Source code is paraphrased, not copied.
- Source images and SuperCollider files are not included.
- All runnable musical examples use stock SuperDirt sample names.
- MIDI examples use `mydevice` as a generic placeholder and are optional.
