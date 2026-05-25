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

## Audited Repositories

| Repository | URL | Inspected files | Exact source links | License state | Audit status | Reason | Structures observed |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `eefano/strudel-songs-collection` | https://github.com/eefano/strudel-songs-collection | `budsandspawn.js`, `epicbiopic.js`, `blackbird.js`, `elpueblo.js`, `swimmingsnake.js`, `aztecchallenge.js`, `savour.js`, `happybirthdayramones.js`, plus repository listing | [budsandspawn.js](https://github.com/eefano/strudel-songs-collection/blob/main/budsandspawn.js), [epicbiopic.js](https://github.com/eefano/strudel-songs-collection/blob/main/epicbiopic.js), [blackbird.js](https://github.com/eefano/strudel-songs-collection/blob/main/blackbird.js), [elpueblo.js](https://github.com/eefano/strudel-songs-collection/blob/main/elpueblo.js), [swimmingsnake.js](https://github.com/eefano/strudel-songs-collection/blob/main/swimmingsnake.js), [aztecchallenge.js](https://github.com/eefano/strudel-songs-collection/blob/main/aztecchallenge.js) | no license found | accepted | Large song collection with many complete arrangements and covers. | `arrange` chains, long cue maps, tablature translation, additive layer entry, tracker voice splitting |
| `gitgernit/strudel` | https://github.com/gitgernit/strudel | `igorTheme.js`, `neverSeeMeAgain.js`, `weNotLikeYouAlt.js`, repository listing | [igorTheme.js](https://github.com/gitgernit/strudel/blob/main/igorTheme.js), [neverSeeMeAgain.js](https://github.com/gitgernit/strudel/blob/main/neverSeeMeAgain.js), [weNotLikeYouAlt.js](https://github.com/gitgernit/strudel/blob/main/weNotLikeYouAlt.js) | no license found | accepted | Beat remake collection with clear voice splits and transcription-oriented structures. | piano/drums stack, intro-to-main arrange, separated melodic voices |
| `Claffystic/StudelProjects` | https://github.com/Claffystic/StudelProjects | `TobyFoxDetermination.js` | [TobyFoxDetermination.js](https://github.com/Claffystic/StudelProjects/blob/main/TobyFoxDetermination.js) | no license found | accepted | Complete cover transcription with independent lead, harmony, and bass lanes. | cover voice stack, long melodic score, role-separated arrangement |
| `smaudd/strudel-sessions` | https://github.com/smaudd/strudel-sessions | `lofi-1.js`, `basic-techno.js`, `two-islands.js`, `hyped-up.js` | [lofi-1.js](https://github.com/smaudd/strudel-sessions/blob/master/lofi-1.js), [basic-techno.js](https://github.com/smaudd/strudel-sessions/blob/master/basic-techno.js), [hyped-up.js](https://github.com/smaudd/strudel-sessions/blob/master/hyped-up.js) | no license found | accepted | Sketch library with practical groove stacks and sample-slice construction. | sample-slice lofi groove, techno stacks, performance toggles |
| `sueszli/strudel-recipes` | https://github.com/sueszli/strudel-recipes | `trance.js`, `techno.js`, `rumble.js`, `simple.js` | [trance.js](https://github.com/sueszli/strudel-recipes/blob/main/trance.js), [techno.js](https://github.com/sueszli/strudel-recipes/blob/main/techno.js), [rumble.js](https://github.com/sueszli/strudel-recipes/blob/main/rumble.js) | licensed: AGPL-3.0 | accepted | Recipe files are concise but structurally useful for genre-form studies. | techno recipe stack, rumble foundation, trance build layers |
| `SvetimFM/cc-cloud-album-1` | https://github.com/SvetimFM/cc-cloud-album-1 | `01_bootstrap_collapse.js`, `04_substrate.js`, `trance_masterpiece.js`, album notes | [01_bootstrap_collapse.js](https://github.com/SvetimFM/cc-cloud-album-1/blob/claude/create-trance-masterpiece-01WfPDroT6TEXobjZGjYyXn1/01_bootstrap_collapse.js), [04_substrate.js](https://github.com/SvetimFM/cc-cloud-album-1/blob/claude/create-trance-masterpiece-01WfPDroT6TEXobjZGjYyXn1/04_substrate.js), [trance_masterpiece.js](https://github.com/SvetimFM/cc-cloud-album-1/blob/claude/create-trance-masterpiece-01WfPDroT6TEXobjZGjYyXn1/trance_masterpiece.js) | no license found | accepted | Album-shaped Strudel repository with named phases and track concepts. | named phase track, sparse drone form, trance layer stack |
| `nicolagulmini/strudel_songs` | https://github.com/nicolagulmini/strudel_songs | `hello_world_masterpiece`, `frontend_tiredness` | [hello_world_masterpiece](https://github.com/nicolagulmini/strudel_songs/blob/main/hello_world_masterpiece), [frontend_tiredness](https://github.com/nicolagulmini/strudel_songs/blob/main/frontend_tiredness) | no license found | rejected | Real Strudel sketches, but the inspected files are compact loops with weaker song-form evidence than selected examples. | short multi-layer loops |
| `shawntz/strudel` | https://github.com/shawntz/strudel | `jam_11-15-2025.js`, `README.md` | [jam_11-15-2025.js](https://github.com/shawntz/strudel/blob/main/jam_11-15-2025.js) | no license found | rejected | Contains a jam file, but not enough distinct structure to displace stronger selected sources. | jam sketch |
| `vbetsch/strudel` | https://github.com/vbetsch/strudel | `README.md`, `webpack.config.js` | [repository](https://github.com/vbetsch/strudel) | no license found | rejected | Tooling/project shell rather than a clear song repository in the inspected clone. | no selected song structure |
| `n0kovo/strudel.cc_experimenting` | https://github.com/n0kovo/strudel.cc_experimenting | `day01.hs`, `day01_2.hs`, `day02.hs`, `day03.hs`, `README.md` | [repository](https://github.com/n0kovo/strudel.cc_experimenting) | ambiguous: NOASSERTION | rejected | Interesting live-coding experiments, but inspected source is Haskell/Tidal-oriented rather than Strudel song examples. | not used |
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
