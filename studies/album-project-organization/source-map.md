# Album Project Organization Source Map

This map links Expedition project features to the local student-project
template. Local files preserve organization habits without copying album code,
audio, artwork, or prose.

| Expedition observation | Extracted habit | Local translation |
| --- | --- | --- |
| Top-level README presents the album, track list, license, release, run notes, and sample usage. | Treat documentation as part of the project. | `project-template/README.md` gives students a project overview and file map. |
| `tracks/00-boot.tidal` must be evaluated before track files. | Put shared setup and recovery in one place. | `project-template/tracks/00-boot.tidal` uses only stock-safe tempo, helper, and recovery material. |
| Each album track has its own numbered `.tidal` file. | Keep tracks separate for rehearsal and recording. | `project-template/tracks/01-title.tidal` is the first copyable starter track. |
| README lists sample folders used by track. | Track sample dependencies visibly. | `project-template/sample-manifest.md` provides source, license, processing, and status fields. |
| README notes stems and special audio dependencies. | Separate stems from small sample folders. | The manifest and cue sheet include optional stem fields without requiring stems. |
| `production/considered-audio.md` records sketches that did and did not make the release. | Keep a selection and rejection log. | `project-template/production-notes.md` includes considered, accepted, and rejected material sections. |
| `production/for-audio-nerds.md` records tools, instruments, and process. | Document production context for listeners and future maintainers. | `project-template/production-notes.md` includes sound sources, recording chain, and mix/master notes. |
| Source boot includes studio-specific MIDI setup. | Hardware dependencies must be documented separately from core project code. | Template runnable files avoid MIDI imports and keep hardware fields optional. |
| Source is CC BY-SA 4.0. | License and attribution shape reuse. | Local docs link to the upstream license and use fresh stock-sample scaffolding. |

## Local Files

- [`README.md`](README.md) - study overview and no-copying boundary.
- [`research-summary.md`](research-summary.md) - source observations and
  teaching themes.
- [`project-template/README.md`](project-template/README.md) - copyable student
  project instructions.
- [`project-template/tracks/00-boot.tidal`](project-template/tracks/00-boot.tidal)
  - stock-safe boot template.
- [`project-template/tracks/01-title.tidal`](project-template/tracks/01-title.tidal)
  - runnable starter track.
- [`project-template/sample-manifest.md`](project-template/sample-manifest.md)
  - sample and stem accounting.
- [`project-template/performance-cues.md`](project-template/performance-cues.md)
  - rehearsal and recording cue sheet.
- [`project-template/production-notes.md`](project-template/production-notes.md)
  - project decision and release notes.

## Translation Notes

- Source code is paraphrased, not copied.
- Source samples, stems, and artwork are not included.
- MIDI and hardware material is treated as context for later study, not a
  template dependency.
