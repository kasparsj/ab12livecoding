# MIDI Hardware Performance Study

Optional course notes and a runnable stock-sample teaching script inspired by
[`kindohm/tidal-meetup-2021-05-08`](https://github.com/kindohm/tidal-meetup-2021-05-08).

This study uses the source repository as a guide to hardware-style performance
architecture: `struct` gates, role-based drum mappings, MIDI channels,
controller input, part toggles, and scene changes. The primary examples run
with stock SuperDirt samples first; MIDI output and controller input appear as
clearly marked optional translations.

## Boundary

Do not copy the upstream boot file, device names, images, or hardware-specific
setup into course work. The local `.tidal` file uses generic stock samples and
the placeholder device name `mydevice` for optional MIDI output.

## Documents

| File | Purpose |
| --- | --- |
| [`research-summary.md`](research-summary.md) | Source notes, extracted techniques, and caveats. |
| [`source-map.md`](source-map.md) | Upstream observations mapped to local stock and MIDI translations. |
| [`superdirt-midi-appendix.md`](superdirt-midi-appendix.md) | Generic SuperDirt MIDI output and controller-input setup notes. |
| [`tidal/midi-controller-performance.tidal`](tidal/midi-controller-performance.tidal) | Runnable stock-sample performance script with optional MIDI comments. |

## Teaching Role

Use this as an optional intermediate-to-advanced study after students are
comfortable with `struct`, `stack`, pattern roles, and conservative gain staging.
Hardware setup is not required for the main lesson.

Start with
[`tidal/midi-controller-performance.tidal`](tidal/midi-controller-performance.tidal).
