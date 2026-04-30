# Hardware Album Notes

These notes extend the album-project template with archival hardware-production
lessons from [`kindohm/risc-chip`](https://github.com/kindohm/risc-chip), a
2016 Kindohm album project by Mike Hodnick.

## Purpose

RISC Chip is best studied here as production documentation, not runnable modern
course code. Its repository shows how a hardware-heavy Tidal album can preserve
track files, boot assumptions, sample extraction notes, and visual performance
cues even after the original live setup is no longer practical to recreate.

Use these notes after the stock-safe
[`project-template/`](project-template/) is understood. The template remains the
copyable scaffold; this file is a documentation-only reference for students
building hardware-based final projects.

## Source Boundary

The inspected RISC Chip clone did not include a license file. This course does
not copy upstream track code, boot code, audio samples, cover art, shader files,
visual cue text, or other assets from the source repository. All references
below are paraphrased observations.

Because the source README states that the music used 2016-era TidalCycles 0.8,
the repository should not be treated as a drop-in dependency for current course
work. It is a historical production record and an archival model.

## Source Observations

| Source area | Archival lesson | Course translation |
| --- | --- | --- |
| README compatibility note | The original project warns that its 2016-era TidalCycles 0.8 code is not realistically runnable on modern systems. | Record exact software versions and keep old-code references separate from current teaching files. |
| Boot file | The album boot process depends on old MIDI libraries, custom MIDI mappings, and studio-specific ports. | Document MIDI hardware dependency and routing, but do not make those dependencies part of the shared course template. |
| Track files | The repository keeps one file per album track, including performance states and recording-specific material. | Treat track files as archival performance records as well as code. |
| Recording workflow | Most tracks used live synth recording from Tidal patterns driving hardware synthesizers over MIDI. | Capture the relationship between patterns, devices, patches, and recorded audio in project notes. |
| Sample folders | Selected tracks use one-shot sample material extracted from hardware recording sessions. | Track sample extraction, ownership, processing, and destination in the sample manifest. |
| Visual material | The Mint track includes shader and cue documentation for a live visual performance. | Preserve visual cue documentation as production context without requiring graphics tools for the audio project. |
| Missing license file | Reuse rights are not explicit in the inspected source tree. | Paraphrase only, link to the source, and avoid copying code or assets. |

## Student Hardware Project Checklist

- Record the TidalCycles, SuperDirt, SuperCollider, and operating-system
  versions used for each recording period.
- Document every MIDI device, channel, port name, clock source, patch, and
  routing assumption needed to recreate a session.
- Separate runnable project files from archival notes when old APIs, custom
  drivers, or studio-only devices are involved.
- Keep sample origins clear: identify whether each sample is stock, recorded,
  extracted from a hardware take, edited from a stem, or externally licensed.
- Preserve visual cues, stage cues, lighting cues, or projection notes as
  context, but do not make them required dependencies for the audio code.
- Write recovery notes for hardware failure: fallback samples, bounced stems,
  tempo notes, and which parts can be safely muted.
- Keep release documentation explicit about what is code, what is audio, what is
  a recording artifact, and what is needed only for historical reconstruction.

## Relationship To The Template

The local [`project-template/`](project-template/) is intentionally modern,
stock-sample-based, and suitable for student reuse. It avoids old MIDI imports,
custom hardware ports, upstream sample folders, and album-specific performance
code.

For a hardware-heavy final project, use the template first, then add project
notes modeled on the checklist above:

- Put current shared setup in `tracks/00-boot.tidal`.
- Keep each track in its own numbered `.tidal` file.
- Use `sample-manifest.md` for hardware recordings, extracted one-shots, stems,
  and permission notes.
- Use `performance-cues.md` for device setup, load order, section cues, and
  emergency recovery.
- Use `production-notes.md` for accepted/rejected material, recording chain,
  mix notes, visual collaborators, and release decisions.

## Phase 7 Boundary

This is a documentation-only Phase 7 addition. It does not add runnable Tidal
examples, copy RISC Chip files, vendor hardware setup, or change the Phase 6
student template. Global indexing, verification tables, and compatibility
summaries remain Phase 8 work.
