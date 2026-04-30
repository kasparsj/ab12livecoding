# Phased Source-by-Source Integration Plan

## Summary

Build an implementable, source-by-source roadmap for integrating the researched
Tidal and livecoding repositories into this curriculum. Keep the repository's
current pattern: source research stays linked and paraphrased, while local
deliverables are stock-sample teaching translations.

No upstream repository should be vendored wholesale. Do not copy substantial
artist code, commercial/remix samples, or hardware-specific boot files into
beginner-facing material.

## Phases

### Phase 0 - Planning Guardrails

- Use this file as the canonical phased checklist for these sources:
  - `kindohm/365tidalpatterns`
  - `lil-data/vroomvroom`
  - `kindohm/tidal-meetup-2021-05-08`
  - `lvm/tidal-drum-patterns`
  - `jarmitage/jarmlib`
  - `kindohm/expedition`
  - `kindohm/risc-chip`
- Follow shared integration rules:
  - Translate techniques; do not paste long source patterns.
  - Prefer stock SuperDirt samples.
  - Keep MIDI, custom samples, old Tidal syntax, and hardware setup optional.
  - Track compatibility and live-test status in existing shared verification
    docs.

### Phase 1 - `kindohm/365tidalpatterns`

- Extend the existing Kindohm track rather than creating a duplicate study.
- Add `studies/kindohm/vocabulary-atlas.md`.
- Cover daily sketch practice, transformation chains, `slowspread` menus,
  sample-index machines, bounded glitch, modulation, and `whenmod` section
  logic.
- Update `studies/kindohm/roadmap.md` to reference the vocabulary atlas as the
  next short-term deliverable.
- Acceptance: instructors can teach from the atlas without opening the upstream
  repository.

### Phase 2 - `lil-data/vroomvroom`

- Add a new advanced study folder: `studies/remix-performance/`.
- Create:
  - `README.md`
  - `research-summary.md`
  - `source-map.md`
  - `tidal/remix-performance-skeleton.tidal`
- Teach named track prefixes, stem-style layers, orbit/gain grouping, muteable
  parts, and performance arrangement.
- Use generic stock or user-owned sample names only; do not include
  Charli XCX-derived audio or recreate the copyrighted remix.
- Acceptance: the `.tidal` file demonstrates a remix-performance architecture
  with placeholder samples and clear replacement comments.

### Phase 3 - `kindohm/tidal-meetup-2021-05-08`

- Add a new optional hardware/MIDI study folder:
  `studies/midi-hardware-performance/`.
- Create:
  - `README.md`
  - `research-summary.md`
  - `source-map.md`
  - `tidal/midi-controller-performance.tidal`
  - `superdirt-midi-appendix.md`
- Teach `struct` with MIDI channels, drum-pad name mappings, controller input
  with `cF`/`cI`, knob-controlled `degradeBy`, live part toggles, and
  controller-driven transformations.
- Include stock-sample fallback blocks before every hardware-specific block.
- Acceptance: students without MIDI hardware can still run the core examples.

### Phase 4 - `lvm/tidal-drum-patterns`

- Add a new rhythm study folder: `studies/drum-structures/`.
- Create:
  - `README.md`
  - `research-summary.md`
  - `source-map.md`
  - `tidal/drum-structure-atlas.tidal`
- Teach `Pattern Bool` drum thinking through rewritten examples:
  four-on-the-floor, Amen-style break, techno, funk, bossa, jungle, irregular,
  and ghost-note structures.
- Do not vendor the Haskell package because it is GPL-3 and has macOS
  case-collision risk.
- Update `lessons/05-euclid-and-binary-rhythms.md` with one short optional
  pointer to the drum-structures study.
- Acceptance: examples use local mini-notation and `struct` translations, not
  imported upstream modules.

### Phase 5 - `jarmitage/jarmlib`

- Add `studies/shared/livecoding-library-design.md`.
- Teach library design concepts: minimal boot file, shorthands, parameter
  groups, signal helpers, harmony helpers, composition helpers, target
  separation, and compatibility files.
- Include one small classroom-safe personal-library template as a code block,
  not a dependency.
- Do not import jarmlib directly or add OSC/Bitwig target code.
- Acceptance: students can design a small personal helper layer without
  changing the course boot environment.

### Phase 6 - `kindohm/expedition`

- Add a project-organization study folder:
  `studies/album-project-organization/`.
- Create:
  - `README.md`
  - `research-summary.md`
  - `source-map.md`
  - `project-template/README.md`
  - `project-template/tracks/00-boot.tidal`
  - `project-template/tracks/01-title.tidal`
  - `project-template/sample-manifest.md`
  - `project-template/performance-cues.md`
  - `project-template/production-notes.md`
- Use `expedition` as the clean model for track folders, boot setup, sample
  manifesting, licensing notes, and production documentation.
- Acceptance: the template can be copied by a student for a final project
  without requiring Expedition samples.

### Phase 7 - `kindohm/risc-chip`

- Extend `studies/album-project-organization/` with
  `hardware-album-notes.md`.
- Teach archival constraints: old Tidal versions, MIDI hardware dependency,
  live synth recording, sample extraction from hardware sessions, and visual cue
  documentation.
- Include a short note that `risc-chip` is best studied as production
  documentation, not runnable modern course code.
- Acceptance: the album-project study distinguishes runnable templates from
  historical and archival analysis.

### Phase 8 - Indexing And Cross-Study Links

- Update `studies/README.md` to list the new study tracks.
- Update `studies/comparison-prompts.md` with prompts for:
  - remix-performance architecture
  - hardware-control performance
  - drum-structure translation
  - album/project organization
- Update `studies/verification.md` with manual test rows for each new `.tidal`
  file.
- Update `studies/shared/tidal-version-compatibility.md` with risks found in
  these sources: old MIDI APIs, `slowspread`, `foldEvery`, `samples`,
  controller input, and package import assumptions.

## Test Plan

- Run markdown link checks manually by opening each new internal link.
- Manually evaluate every new `.tidal` file in a standard Tidal/SuperDirt
  setup.
- For each `.tidal` file, verify:
  - first sound-check block works
  - each section can be evaluated independently
  - `hush` or cleanup block works
  - no private sample names are required
  - hardware examples have stock fallbacks
- Record results in `studies/verification.md`.

## Assumptions

- This is a curriculum integration, not a code-vendoring project.
- Source-by-source sequencing is preferred.
- New material should be optional or intermediate unless it directly supports an
  existing core lesson.
- No upstream samples or substantial source files will be copied unless
  licensing is reviewed separately.
- Existing dirty worktree changes are user-owned and must not be overwritten
  during implementation.
