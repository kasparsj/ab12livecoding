# Remix Performance Source Map

This map links upstream `lil-data/vroomvroom` observations to local teaching
translations. Local files preserve performance architecture and avoid requiring
the source samples, helper environment, or commercial remix material.

| Upstream observation | Extracted technique | Local translation |
| --- | --- | --- |
| `README.md` presents a live-coded remix context. | Treat a remix as a compact performance object. | `README.md` states the copyright and licensing boundary and frames the study as architecture-only. |
| `VroomVroom.tidal` uses a shared track prefix for related named patterns. | Group related parts under one performance namespace. | `tidal/remix-performance-skeleton.tidal` uses `let t = "rmx"` and names parts by role. |
| Source layers are arranged as stem-like roles. | Separate hook, build, percussion, and bass duties. | The skeleton creates four named stems with stock samples. |
| Source loop material is tied to custom sample folders. | Use loop roles without depending on private audio. | The skeleton uses `loopAt` with stock placeholders such as `arpy`, `superpiano`, and `bass`. |
| Helper groups combine gain, legato, orbit, room, and size. | Keep routing and level decisions attached to each part. | The skeleton writes direct controls: `gain`, `legato`, `orbit`, `room`, and `size`. |
| The percussion section is scaffolded as a stack of structured parts. | Build a drum stem from gated subparts. | The skeleton uses `stack` and `struct` with `bd`, `sn`, `hh`, `cp`, and `drum`. |
| `BootTidalCustom.hs` contains personal helper aliases and track utilities. | A helper library can make performance faster. | Local docs explain the design habit; no source helper file is imported. |

## Local Files

- [`README.md`](README.md) - study overview and usage boundary.
- [`research-summary.md`](research-summary.md) - source observations and
  teaching themes.
- [`tidal/remix-performance-skeleton.tidal`](tidal/remix-performance-skeleton.tidal)
  - stock-sample performance skeleton.

## Translation Notes

- Source code is paraphrased, not copied.
- Source audio is not included.
- The skeleton is intended for students to replace with their own samples or
  stock material after they understand the arrangement roles.
