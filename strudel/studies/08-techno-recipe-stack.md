# Techno Recipe Stack

## Study Metadata

- Primary axis: genre/domain recipe.
- Evidence source: [source-map study evidence](../source-map.md#study-evidence).
- Reuse posture: source repository declares AGPL-3.0; this study is still a
  structural summary rather than a reuse grant.

## Source Examples

- [sueszli/strudel-recipes: `trance.js`](https://github.com/sueszli/strudel-recipes/blob/main/trance.js)
- [sueszli/strudel-recipes: `techno.js`](https://github.com/sueszli/strudel-recipes/blob/main/techno.js)
- [sueszli/strudel-recipes: `rumble.js`](https://github.com/sueszli/strudel-recipes/blob/main/rumble.js)

## Structure

This structure builds a genre track from reusable modules: kick, hats, clap,
bass, lead, pad, and effect texture. Each module is simple alone, but the stack
creates form through mute choices, filter motion, and periodic transformations.

## Why It Works

- Each layer has one clear job.
- Rumble or sub layers can be studied separately from the kick.
- Commented layers act as performance states.
- Periodic effects such as filter sweeps and crush changes create macro-form.

## Arrangement Map

| Module | Role |
| --- | --- |
| Kick | Pulse and sidechain anchor. |
| Rumble/sub | Low-end continuity. |
| Hats/ride/clap | Density and section energy. |
| Lead/key | Hook and pitch identity. |
| Global filter/effect | Build, breakdown, and transition. |

## Reusable Template

```js
const kick = s("bd*4").gain(1)
const rumble = s("bd*4").lpf(80).room(0.9)
const hats = s("hh*8").hpf(1000)
const lead = n("hook pattern").scale("minor").s("lead")
const filter = slider(0, 0, 1200)

$: stack(kick, rumble, hats, lead)
  .every(16, x => x.lpf("<4000 2000 1000 500>"))
  .hpf(filter)
```

## Practice Prompts

- Make the kick and rumble as separate layers from the same rhythm.
- Add only one pitched hook.
- Create a 16-cycle filter transformation.

## Caveats

Recipe stacks can become static. Add at least one macro-control: mute groups,
filter sweeps, density changes, or delayed layer entry.
