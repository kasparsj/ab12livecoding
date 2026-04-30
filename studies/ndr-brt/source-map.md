# ndr-brt Source Map

This map links upstream `ndr-brt/sc-adente/tidal` material to local teaching
translations. The local files preserve technique while avoiding private samples,
custom synthdefs, Olbos/Mutable dependencies, and MIDI setup requirements.

| Upstream source | Extracted technique | Local teaching file | Local section |
| --- | --- | --- | --- |
| [`tidal/Shortcuts.hs`](https://github.com/ndr-brt/sc-adente/blob/master/tidal/Shortcuts.hs), [`tidal/Functions.hs`](https://github.com/ndr-brt/sc-adente/blob/master/tidal/Functions.hs) | Personal shortcut vocabulary and helper functions as part of the instrument. | [`tidal/ndr-brt-01-dialect-and-transformations.tidal`](tidal/ndr-brt-01-dialect-and-transformations.tidal) | Sections 1-3. |
| [`tidal/practices/granul.tidal`](https://github.com/ndr-brt/sc-adente/blob/master/tidal/practices/granul.tidal), [`tidal/live/20200319_eulerroom_equinox.tidal`](https://github.com/ndr-brt/sc-adente/blob/master/tidal/live/20200319_eulerroom_equinox.tidal) | Transformation chains, `chunk`, `iter`, `hurry`, `layer`, and one-source derivation. | [`tidal/ndr-brt-01-dialect-and-transformations.tidal`](tidal/ndr-brt-01-dialect-and-transformations.tidal) | Sections 4-9. |
| [`tidal/live/20200319_eulerroom_equinox.tidal`](https://github.com/ndr-brt/sc-adente/blob/master/tidal/live/20200319_eulerroom_equinox.tidal), [`tidal/video/triccina.tidal`](https://github.com/ndr-brt/sc-adente/blob/master/tidal/video/triccina.tidal), [`tidal/practices/granul.tidal`](https://github.com/ndr-brt/sc-adente/blob/master/tidal/practices/granul.tidal) | One sample as anchor, slow body, grain body, and accent body. | [`tidal/ndr-brt-02-one-sample-many-bodies.tidal`](tidal/ndr-brt-02-one-sample-many-bodies.tidal) | Sections 1-8. |
| [`tidal/records/2020_elea_9003/01_elea.tidal`](https://github.com/ndr-brt/sc-adente/blob/master/tidal/records/2020_elea_9003/01_elea.tidal), [`tidal/practices/markov.tidal`](https://github.com/ndr-brt/sc-adente/blob/master/tidal/practices/markov.tidal) | Controlled probability and generated melodic behavior. | [`tidal/ndr-brt-03-probability-and-rhythm-logic.tidal`](tidal/ndr-brt-03-probability-and-rhythm-logic.tidal), [`tidal/ndr-brt-04-melodic-machines.tidal`](tidal/ndr-brt-04-melodic-machines.tidal) | Probability sections and pseudo-Markov melody. |
| [`tidal/Functions.hs`](https://github.com/ndr-brt/sc-adente/blob/master/tidal/Functions.hs), `tidal/practices/*` | Sieve, binary, Euclidean, mask, and boolean rhythm thinking. | [`tidal/ndr-brt-03-probability-and-rhythm-logic.tidal`](tidal/ndr-brt-03-probability-and-rhythm-logic.tidal) | Sections 8-12. |
| [`tidal/practices/markov.tidal`](https://github.com/ndr-brt/sc-adente/blob/master/tidal/practices/markov.tidal), [`tidal/Functions.hs`](https://github.com/ndr-brt/sc-adente/blob/master/tidal/Functions.hs) | Generated numbers mapped to scales and layered across register roles. | [`tidal/ndr-brt-04-melodic-machines.tidal`](tidal/ndr-brt-04-melodic-machines.tidal) | Sections 1-9. |
| [`tidal/Parameters.hs`](https://github.com/ndr-brt/sc-adente/blob/master/tidal/Parameters.hs), [`tidal/practices/mutable.tidal`](https://github.com/ndr-brt/sc-adente/blob/master/tidal/practices/mutable.tidal) | Custom parameter ecosystems translated into stock timbre controls. | [`tidal/ndr-brt-02-one-sample-many-bodies.tidal`](tidal/ndr-brt-02-one-sample-many-bodies.tidal), [`tidal/ndr-brt-05-live-set-architecture.tidal`](tidal/ndr-brt-05-live-set-architecture.tidal) | Timbral roles and section-state color changes. |
| [`tidal/live/20200319_eulerroom_equinox.tidal`](https://github.com/ndr-brt/sc-adente/blob/master/tidal/live/20200319_eulerroom_equinox.tidal), [`tidal/Shortcuts.hs`](https://github.com/ndr-brt/sc-adente/blob/master/tidal/Shortcuts.hs) | Live-set architecture, recovery, global color change, and endings. | [`tidal/ndr-brt-05-live-set-architecture.tidal`](tidal/ndr-brt-05-live-set-architecture.tidal) | Sections 1-7. |
| [`tidal/midi.scd`](https://github.com/ndr-brt/sc-adente/blob/master/tidal/midi.scd), [`tidal/practices/midiii.tidal`](https://github.com/ndr-brt/sc-adente/blob/master/tidal/practices/midiii.tidal) | MIDI and external control as advanced optional context. | [`study-module-plans.md`](study-module-plans.md), [`roadmap.md`](roadmap.md) | Study 9 and advanced appendix tasks. |

## Cross-Reference Notes

- All upstream paths in this file were verified against a fresh clone during the
  current audit.
- Source code is paraphrased and translated; these files are not reproductions
  of the original set files.
