# Album Project Organization Research Summary

Source: [`kindohm/expedition`](https://github.com/kindohm/expedition)

## Repository Material Inspected

- `README.md` - album overview, track list, running notes, license section,
  release link, MIDI caveats, and sample/stem usage by track.
- `LICENSE` - Creative Commons Attribution-ShareAlike 4.0 International.
- `production/considered-audio.md` - notes about considered sketches, missing
  source code, rejected material, and release selection.
- `production/for-audio-nerds.md` - production context, instruments, software,
  hardware, smart phone apps, and Tidal as the sequencing/performance system.
- `tracks/00-boot.tidal` - small boot file with custom functions and
  studio-specific MIDI setup.
- Representative track files - examples of one-file-per-track organization,
  per-track tempo, section states, sample use, stems, MIDI parts, `hush`, and
  cleanup lines.
- `samples/` - 68 sample folders and 744 sample files used by the album.

## Extracted Teaching Themes

### 1. Project-Level README

Expedition's top-level README explains the release, track list, license, how to
run the code, and what sample material each track uses.

Teaching translation:

- Every final project should have a project README.
- The README should describe the work as a project, not just a folder of code.
- Sample and stem dependencies should be visible before anyone opens a track.

### 2. Boot-First Workflow

The source asks performers to evaluate `tracks/00-boot.tidal` before running
track files. That is a useful habit even when the local boot file is much
simpler.

Teaching translation:

- Keep common tempo, helpers, safety notes, and recovery commands in a boot
  file.
- Keep custom hardware and old MIDI setup out of beginner templates.
- Make the first track file runnable with stock samples after boot.

### 3. One File Per Track

The source uses one `.tidal` file per album track. That makes track order,
rehearsal, debugging, and recording easier to manage.

Teaching translation:

- Use numbered filenames.
- Keep track metadata at the top of each file.
- Include section comments and a planned ending.

### 4. Sample And Stem Manifesting

The README lists sample folders by track and notes where stems are involved.
This is one of the most transferable project habits in the source.

Teaching translation:

- Maintain a sample manifest while composing.
- Record source, creator, license, processing, and status for every sample.
- Do not wait until release week to audit sample rights.

### 5. Licensing And Attribution

Expedition is CC BY-SA 4.0 and explicitly discusses sample origin. That makes
licensing part of the project structure rather than an afterthought.

Teaching translation:

- Students should use stock, self-recorded, or clearly licensed material.
- Attribution should be written during production.
- Unknown downloads should be replaced or removed before release.

### 6. Production Notes And Selection

The production notes document considered sketches and why some material did not
make the release. This is useful for student reflection and portfolio work.

Teaching translation:

- Keep accepted and rejected material in a decision log.
- Record missing-source problems.
- Document the production chain in plain language.

### 7. Hardware And MIDI Caveats

Some source tracks rely on old/custom Tidal MIDI APIs and studio-specific
hardware routing. This is important context, but not a Phase 6 dependency.

Teaching translation:

- Keep hardware notes as optional documentation.
- Do not make MIDI or custom synths required in the template.
- Phase 7 can expand archival hardware analysis separately.

## Source Caveats

- Expedition material is CC BY-SA 4.0.
- The source contains a large custom sample library and cover art.
- Some tracks use old Tidal/MIDI APIs and studio-specific devices.
- Local Phase 6 does not copy source tracks, samples, stems, images, or
  production prose.
