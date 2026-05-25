# Strudel Source Map

Audit date: 2026-05-25

Discovery surfaces:

- Required seed repositories from the request.
- [terryds/awesome-strudel](https://github.com/terryds/awesome-strudel), especially the featured tracks and repository list.
- [GitHub topic: strudel](https://github.com/topics/strudel).
- GitHub repository search for Strudel music/song repositories.
- Local clone inspection of a bounded candidate set under `/tmp/ab12k-strudel-audit`.

Selection rule: accepted studies need exact public source links and visible
song-form evidence such as section contrast, staged layer entry/exit,
transition logic, performance controls, or a reusable variation system. Long
files or many Strudel idioms alone were not enough.

License states:

- `licensed`: repository declares a recognizable license.
- `no license found`: GitHub API did not report a license.
- `ambiguous`: a license exists but reuse terms are not clear from GitHub API.
- `not used as source text`: used only for discovery or context.

Provenance and stability notes:

- Branch links in the repository table are readable navigation links. The
  evidence table below uses the audited commit snapshots and line spans used for
  the study claims.
- No-license and cover examples are analysis-only. Public source availability
  does not grant permission to reuse the code or the underlying composition.
- `SvetimFM/cc-cloud-album-1` is AI-authored according to its album notes; it is
  used as supplemental structure evidence, not as an authority on human song
  practice.

Evidence contract:

- The `Study Evidence` table is the authority for source-backed claims.
- Repository and shortlist tables are navigation aids; if they disagree with
  the commit-pinned evidence table, the evidence table wins.
- Each study has one declared primary axis. Secondary traits can appear in the
  prose, but the study is classified by that primary axis.
- Claims are limited to visible code structure and repository provenance. The
  audit does not validate audio quality, legal reuse rights, or stable upstream
  availability beyond the recorded commit snapshots.

## Architecture Watchlist Resolution

| Watchlist item | Resolution |
| --- | --- |
| Mutable branch links | Added audited commit snapshots and commit-pinned line-span evidence. Branch links remain only as readable navigation links. |
| Mixed taxonomy axes | Added a `Primary axis` field in the studies index, the source evidence table, and each individual study. |
| Weak auditability | Added a per-study evidence table with claim scope, source lines, provenance/use status, and limits or counterexamples. |
| AI-generated provenance | Marked `SvetimFM/cc-cloud-album-1` as AI-authored supplemental evidence in the source map and affected studies. |
| Reuse-right ambiguity | Added analysis-only caveats for no-license sources, covers, third-party compositions, and AI-authored examples. |

## Audited Commit Snapshots

| Repository | Branch inspected | Audited commit |
| --- | --- | --- |
| `eefano/strudel-songs-collection` | `main` | [`10b916e28c6e67124e2af55801023d9aa2b373a8`](https://github.com/eefano/strudel-songs-collection/tree/10b916e28c6e67124e2af55801023d9aa2b373a8) |
| `gitgernit/strudel` | `main` | [`11c516d72894445544a5ce0335b6398c23734e72`](https://github.com/gitgernit/strudel/tree/11c516d72894445544a5ce0335b6398c23734e72) |
| `Claffystic/StudelProjects` | `main` | [`6bb654c4595ab94795f9e10308d16b77d74c3160`](https://github.com/Claffystic/StudelProjects/tree/6bb654c4595ab94795f9e10308d16b77d74c3160) |
| `smaudd/strudel-sessions` | `master` | [`251978d85551e01efa1e2e0a2cb49189a3bf01ca`](https://github.com/smaudd/strudel-sessions/tree/251978d85551e01efa1e2e0a2cb49189a3bf01ca) |
| `sueszli/strudel-recipes` | `main` | [`c081ac2f4c319db8f8c7e3fe4c3d29a83391524b`](https://github.com/sueszli/strudel-recipes/tree/c081ac2f4c319db8f8c7e3fe4c3d29a83391524b) |
| `SvetimFM/cc-cloud-album-1` | `claude/create-trance-masterpiece-01WfPDroT6TEXobjZGjYyXn1` | [`6e11782c4adfe953f0559e7fc69d6707a994fd3a`](https://github.com/SvetimFM/cc-cloud-album-1/tree/6e11782c4adfe953f0559e7fc69d6707a994fd3a) |
| `n0kovo/strudel.cc_experimenting` | `main` | [`177ef0ad4b59a08789d64576ba085a7e92c1efbe`](https://github.com/n0kovo/strudel.cc_experimenting/tree/177ef0ad4b59a08789d64576ba085a7e92c1efbe) |

## Audited Repositories

| Repository | URL | Inspected files | Selected source links | License state | Audit status | Reason | Structures observed |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `eefano/strudel-songs-collection` | https://github.com/eefano/strudel-songs-collection | `budsandspawn.js`, `epicbiopic.js`, `blackbird.js`, `elpueblo.js`, `swimmingsnake.js`, `aztecchallenge.js`, `savour.js`, `happybirthdayramones.js`, plus repository listing | [budsandspawn.js](https://github.com/eefano/strudel-songs-collection/blob/main/budsandspawn.js), [epicbiopic.js](https://github.com/eefano/strudel-songs-collection/blob/main/epicbiopic.js), [blackbird.js](https://github.com/eefano/strudel-songs-collection/blob/main/blackbird.js), [elpueblo.js](https://github.com/eefano/strudel-songs-collection/blob/main/elpueblo.js), [swimmingsnake.js](https://github.com/eefano/strudel-songs-collection/blob/main/swimmingsnake.js), [aztecchallenge.js](https://github.com/eefano/strudel-songs-collection/blob/main/aztecchallenge.js), [savour.js](https://github.com/eefano/strudel-songs-collection/blob/main/savour.js), [happybirthdayramones.js](https://github.com/eefano/strudel-songs-collection/blob/main/happybirthdayramones.js) | no license found | accepted | Large song collection with many complete arrangements and covers. | `arrange` chains, long cue maps, tablature translation, additive layer entry, tracker voice splitting |
| `gitgernit/strudel` | https://github.com/gitgernit/strudel | `igorTheme.js`, `neverSeeMeAgain.js`, `weNotLikeYouAlt.js`, repository listing | [igorTheme.js](https://github.com/gitgernit/strudel/blob/main/igorTheme.js), [weNotLikeYouAlt.js](https://github.com/gitgernit/strudel/blob/main/weNotLikeYouAlt.js) | no license found | accepted | Beat remake collection with some clear structure. `neverSeeMeAgain.js` was inspected but is not selected as cover voice-stack evidence because it is mostly a single piano transcription after a short intro. | piano/drums stack, intro-to-main arrange |
| `Claffystic/StudelProjects` | https://github.com/Claffystic/StudelProjects | `TobyFoxDetermination.js` | [TobyFoxDetermination.js](https://github.com/Claffystic/StudelProjects/blob/main/TobyFoxDetermination.js) | no license found | accepted | Complete cover transcription with independent lead, harmony, and bass lanes. | cover voice stack, long melodic score, role-separated arrangement |
| `smaudd/strudel-sessions` | https://github.com/smaudd/strudel-sessions | `lofi-1.js`, `basic-techno.js`, `two-islands.js`, `hyped-up.js` | [lofi-1.js](https://github.com/smaudd/strudel-sessions/blob/master/lofi-1.js), [basic-techno.js](https://github.com/smaudd/strudel-sessions/blob/master/basic-techno.js), [two-islands.js](https://github.com/smaudd/strudel-sessions/blob/master/two-islands.js), [hyped-up.js](https://github.com/smaudd/strudel-sessions/blob/master/hyped-up.js) | no license found | accepted | Sketch library with practical groove stacks and sample-slice construction. | sample-slice lofi groove, techno stacks, performance toggles |
| `sueszli/strudel-recipes` | https://github.com/sueszli/strudel-recipes | `trance.js`, `techno.js`, `rumble.js`, `simple.js` | [trance.js](https://github.com/sueszli/strudel-recipes/blob/main/trance.js), [techno.js](https://github.com/sueszli/strudel-recipes/blob/main/techno.js), [rumble.js](https://github.com/sueszli/strudel-recipes/blob/main/rumble.js), [simple.js](https://github.com/sueszli/strudel-recipes/blob/main/simple.js) | licensed: AGPL-3.0 | accepted | Recipe files are concise but structurally useful for genre-form studies. | techno recipe stack, rumble foundation, trance build layers |
| `SvetimFM/cc-cloud-album-1` | https://github.com/SvetimFM/cc-cloud-album-1 | `01_bootstrap_collapse.js`, `04_substrate.js`, `trance_masterpiece.js`, `ALBUM_CONCEPT.md`, album notes | [01_bootstrap_collapse.js](https://github.com/SvetimFM/cc-cloud-album-1/blob/claude/create-trance-masterpiece-01WfPDroT6TEXobjZGjYyXn1/01_bootstrap_collapse.js), [04_substrate.js](https://github.com/SvetimFM/cc-cloud-album-1/blob/claude/create-trance-masterpiece-01WfPDroT6TEXobjZGjYyXn1/04_substrate.js), [trance_masterpiece.js](https://github.com/SvetimFM/cc-cloud-album-1/blob/claude/create-trance-masterpiece-01WfPDroT6TEXobjZGjYyXn1/trance_masterpiece.js), [ALBUM_CONCEPT.md](https://github.com/SvetimFM/cc-cloud-album-1/blob/main/ALBUM_CONCEPT.md) | no license found | accepted | Album-shaped Strudel repository with named phases and track concepts. `ALBUM_CONCEPT.md` presents the album as composed by Claude, so selected material is analysis-only structure evidence. | named phase track, sparse drone form, trance layer stack |
| `nicolagulmini/strudel_songs` | https://github.com/nicolagulmini/strudel_songs | `hello_world_masterpiece`, `frontend_tiredness` | [hello_world_masterpiece](https://github.com/nicolagulmini/strudel_songs/blob/main/hello_world_masterpiece), [frontend_tiredness](https://github.com/nicolagulmini/strudel_songs/blob/main/frontend_tiredness) | no license found | rejected | Real Strudel sketches, but the inspected files are compact loops with weaker song-form evidence than selected examples. | short multi-layer loops |
| `shawntz/strudel` | https://github.com/shawntz/strudel | `jam_11-15-2025.js`, `README.md` | [jam_11-15-2025.js](https://github.com/shawntz/strudel/blob/main/jam_11-15-2025.js) | no license found | rejected | Contains a jam file, but not enough distinct structure to displace stronger selected sources. | jam sketch |
| `vbetsch/strudel` | https://github.com/vbetsch/strudel | `README.md`, `webpack.config.js` | [repository](https://github.com/vbetsch/strudel) | no license found | rejected | Tooling/project shell rather than a clear song repository in the inspected clone. | no selected song structure |
| `n0kovo/strudel.cc_experimenting` | https://github.com/n0kovo/strudel.cc_experimenting | `day01.hs`, `day01_2.hs`, `day02.hs`, `day03.hs`, `README.md` | [repository](https://github.com/n0kovo/strudel.cc_experimenting) | licensed: CC BY-NC-SA 4.0 (non-commercial/share-alike) | rejected | Interesting live-coding experiments, but inspected source is Haskell/Tidal-oriented rather than Strudel song examples. | not used |
| `terryds/learning-music-production-with-strudel` | https://github.com/terryds/learning-music-production-with-strudel | `README.md` | [repository](https://github.com/terryds/learning-music-production-with-strudel) | no license found | rejected | Useful learning resource, but not a song repository for this study set. | tutorial context |
| `terryds/awesome-strudel` | https://github.com/terryds/awesome-strudel | `README.md` featured tracks and repository list | [README.md](https://github.com/terryds/awesome-strudel/blob/main/README.md) | no license found | accepted as discovery source | Curated discovery index for Strudel tracks and repositories. | repository discovery, not source text |

## Shortlist

| Study | Structure | Primary examples |
| --- | --- | --- |
| 01 | Short arrange chain | [budsandspawn.js](https://github.com/eefano/strudel-songs-collection/blob/main/budsandspawn.js) |
| 02 | Lettered cue score | [epicbiopic.js](https://github.com/eefano/strudel-songs-collection/blob/main/epicbiopic.js) |
| 03 | Tablature translation | [blackbird.js](https://github.com/eefano/strudel-songs-collection/blob/main/blackbird.js), [elpueblo.js](https://github.com/eefano/strudel-songs-collection/blob/main/elpueblo.js) |
| 04 | Additive long form | [swimmingsnake.js](https://github.com/eefano/strudel-songs-collection/blob/main/swimmingsnake.js), [savour.js](https://github.com/eefano/strudel-songs-collection/blob/main/savour.js) |
| 05 | Tracker voice split | [aztecchallenge.js](https://github.com/eefano/strudel-songs-collection/blob/main/aztecchallenge.js) |
| 06 | Cover voice stack | [TobyFoxDetermination.js](https://github.com/Claffystic/StudelProjects/blob/main/TobyFoxDetermination.js), [igorTheme.js](https://github.com/gitgernit/strudel/blob/main/igorTheme.js) |
| 07 | Sample-slice groove | [lofi-1.js](https://github.com/smaudd/strudel-sessions/blob/master/lofi-1.js) |
| 08 | Techno recipe stack | [trance.js](https://github.com/sueszli/strudel-recipes/blob/main/trance.js), [techno.js](https://github.com/sueszli/strudel-recipes/blob/main/techno.js), [rumble.js](https://github.com/sueszli/strudel-recipes/blob/main/rumble.js) |
| 09 | Named phase album track | [01_bootstrap_collapse.js](https://github.com/SvetimFM/cc-cloud-album-1/blob/claude/create-trance-masterpiece-01WfPDroT6TEXobjZGjYyXn1/01_bootstrap_collapse.js) |
| 10 | Sparse drone form | [04_substrate.js](https://github.com/SvetimFM/cc-cloud-album-1/blob/claude/create-trance-masterpiece-01WfPDroT6TEXobjZGjYyXn1/04_substrate.js) |

## Study Evidence

| Study | Primary axis | Provenance/use | Evidence | Limit |
| --- | --- | --- | --- | --- |
| 01 Short arrange chain | Formal mechanism | No-license repository; analysis-only. | `budsandspawn.js` defines section material in a `stack` and joins contrasting spans with `arrange` at [lines 15-23](https://github.com/eefano/strudel-songs-collection/blob/10b916e28c6e67124e2af55801023d9aa2b373a8/budsandspawn.js#L15-L23). | Also credits a third-party composition, so it is structure evidence only. |
| 02 Lettered cue score | Formal mechanism | No-license repository; analysis-only. | `epicbiopic.js` maps letter cues with `pickRestart`, splits orchestral material, and separately cues melody/drums at [lines 10-20](https://github.com/eefano/strudel-songs-collection/blob/10b916e28c6e67124e2af55801023d9aa2b373a8/epicbiopic.js#L10-L20), [35](https://github.com/eefano/strudel-songs-collection/blob/10b916e28c6e67124e2af55801023d9aa2b373a8/epicbiopic.js#L35), and [48](https://github.com/eefano/strudel-songs-collection/blob/10b916e28c6e67124e2af55801023d9aa2b373a8/epicbiopic.js#L48). | Evidence supports cue architecture, not a general claim about every layer. |
| 03 Tablature translation | Material translation | No-license repository; analysis-only. | `blackbird.js` combines a song cue string with tablature/strum lookup at [lines 14-37](https://github.com/eefano/strudel-songs-collection/blob/10b916e28c6e67124e2af55801023d9aa2b373a8/blackbird.js#L14-L37); `elpueblo.js` maps strums and `pickRestart` guitar material at [lines 11-26](https://github.com/eefano/strudel-songs-collection/blob/10b916e28c6e67124e2af55801023d9aa2b373a8/elpueblo.js#L11-L26). | Both are covers/arrangements, so do not reuse as source text. |
| 04 Additive long form | Temporal layering | No-license repository; analysis-only. | `swimmingsnake.js` builds a `part` stack and long `pickRestart` entries at [lines 13-32](https://github.com/eefano/strudel-songs-collection/blob/10b916e28c6e67124e2af55801023d9aa2b373a8/swimmingsnake.js#L13-L32); `savour.js` uses a long cue string and multiple `song.pickRestart` layers at [lines 6-25](https://github.com/eefano/strudel-songs-collection/blob/10b916e28c6e67124e2af55801023d9aa2b373a8/savour.js#L6-L25). | Third-party composition credits make this an analysis-only pattern. |
| 05 Tracker voice split | Voice architecture | No-license repository; analysis-only. | `aztecchallenge.js` defines parallel tracker-like `sid1`, `sid2`, and `sid3` voices from the same parts table at [lines 18-20](https://github.com/eefano/strudel-songs-collection/blob/10b916e28c6e67124e2af55801023d9aa2b373a8/aztecchallenge.js#L18-L20). | Source credits a third-party composition; use only the structural idea. |
| 06 Cover voice stack | Transcription and role lanes | No-license cover/remake repositories; analysis-only. | `TobyFoxDetermination.js` exposes `$lead`, `$harmony`, and `$bass` lanes at [lines 18-82](https://github.com/Claffystic/StudelProjects/blob/6bb654c4595ab94795f9e10308d16b77d74c3160/TobyFoxDetermination.js#L18-L82); `igorTheme.js` separates piano material, drums, and final stack at [lines 1-47](https://github.com/gitgernit/strudel/blob/11c516d72894445544a5ce0335b6398c23734e72/igorTheme.js#L1-L47). | `igorTheme.js` is a simpler piano/drums split; it is not full lead/harmony/bass evidence. |
| 07 Sample-slice groove | Performance/sample workflow | No-license repository; analysis-only. | `lofi-1.js` defines chopped break material, pad, bass, lead, sliders, and final stack at [lines 4-68](https://github.com/smaudd/strudel-sessions/blob/251978d85551e01efa1e2e0a2cb49189a3bf01ca/lofi-1.js#L4-L68). | Evidence supports groove construction, not full-song macro form. |
| 08 Techno recipe stack | Genre/domain recipe | AGPL-3.0 source repository. | `trance.js` and `techno.js` expose BPM, bass/lead/drum modules, sliders, and final stacks at [trance lines 3-138](https://github.com/sueszli/strudel-recipes/blob/c081ac2f4c319db8f8c7e3fe4c3d29a83391524b/trance.js#L3-L138) and [techno lines 3-95](https://github.com/sueszli/strudel-recipes/blob/c081ac2f4c319db8f8c7e3fe4c3d29a83391524b/techno.js#L3-L95); `rumble.js` adds cyclic mutations at [lines 1-38](https://github.com/sueszli/strudel-recipes/blob/c081ac2f4c319db8f8c7e3fe4c3d29a83391524b/rumble.js#L1-L38). | Reuse must follow AGPL-3.0; study summary is not a license grant. |
| 09 Named phase album track | Narrative phase form | AI-authored, no-license repository; supplemental analysis-only evidence. | Album notes identify the project as "by Claude" and composed by Claude at [lines 1-2](https://github.com/SvetimFM/cc-cloud-album-1/blob/6e11782c4adfe953f0559e7fc69d6707a994fd3a/ALBUM_CONCEPT.md#L1-L2) and [294](https://github.com/SvetimFM/cc-cloud-album-1/blob/6e11782c4adfe953f0559e7fc69d6707a994fd3a/ALBUM_CONCEPT.md#L294). `01_bootstrap_collapse.js` defines named stacks and masks them into a final form at [lines 31-250](https://github.com/SvetimFM/cc-cloud-album-1/blob/6e11782c4adfe953f0559e7fc69d6707a994fd3a/01_bootstrap_collapse.js#L31-L250). | Use as a clear code-structure example, not as evidence of established human practice. |
| 10 Sparse drone form | Density profile | AI-authored, no-license repository; supplemental analysis-only evidence. | Album notes provenance is the same as Study 09. `04_substrate.js` defines sparse named layers and masks them into the final stack at [lines 26-279](https://github.com/SvetimFM/cc-cloud-album-1/blob/6e11782c4adfe953f0559e7fc69d6707a994fd3a/04_substrate.js#L26-L279). | Sound-design quality is not verified by the source map; only the sparse structure is claimed. |
