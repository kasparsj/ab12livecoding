# AB12KABINETS Jarmlib Changes

## 2026-04-30

- Added Jarmlib as a third-party vendored source tree under `upstream/`.
- Copied upstream files unchanged, excluding the upstream `.git` directory.
- Added local metadata and notices outside the upstream tree.
- Added [`ab12kabinets/Boot.hs`](ab12kabinets/Boot.hs) as a local opt-in course
  wrapper. This wrapper is not an upstream Jarmlib file.

Future edits to files under `upstream/` must be recorded here with the date,
changed file paths, and reason for the change.
