# MIDI Hardware Performance Research Summary

Source:
[`kindohm/tidal-meetup-2021-05-08`](https://github.com/kindohm/tidal-meetup-2021-05-08)

## Repository Material Inspected

- `readme.tidal` - meetup teaching script covering Tidal MIDI output,
  hardware-style `struct` rhythms, MIDI channel routing, drum role aliases,
  controller input with `cF` and `cI`, knob-driven reduction, part toggles,
  large performance stacks, `iter`, and scene or CC variation.
- `superdirt-boot.sc` - SuperDirt startup material with MIDI output setup and
  a MIDI-to-OSC controller bridge for sending CC values into Tidal control
  patterns.
- Hardware mapping images - useful source context for controller layouts, but
  not copied into this repository.

No license file was present in the cloned source. The local study paraphrases
the architecture, avoids upstream setup files and images, and uses generic
stock-sample translations before any optional MIDI example.

## Extracted Teaching Themes

### 1. Hardware-Style `struct`

The source treats `struct` as a gate pattern for triggering fixed drum or synth
roles. This maps well to stock-sample teaching because students can hear the
rhythm before routing it to external hardware.

Teaching translation:

- Start with `sound "bd"`, `sound "sn"`, and `sound "hh"`.
- Add `struct` gates one role at a time.
- Show the MIDI equivalent only after the stock version is working.

### 2. Channel Mapping As Role Mapping

The source maps different drum roles to different MIDI channels and later wraps
those mappings in short aliases. The important lesson is not the exact channel
numbers, but the separation between musical role and output target.

Teaching translation:

- Name local roles such as kick, clap, percussion, hat, and pad.
- Keep the same role names when moving from stock samples to `midichan`.
- Use `mydevice` as the generic output placeholder.

### 3. Controller Input With Defaults

The source uses `cF` and `cI` to read external controller values. These are most
useful in class when they include defaults, so the script remains predictable
without hardware.

Teaching translation:

- Use `cF 0.5 "88"` for a continuous fallback value.
- Use `range` to keep gain and effect values bounded.
- Use `cI 4 "89"` only for optional integer-driven transforms.

### 4. Knob-Driven Reduction

Controller values can reduce density instead of always adding more sound. The
source demonstrates this through probability-driven transformations.

Teaching translation:

- Use `degradeBy (cF ...)` for thinning a part.
- Use `sometimesBy (cF ...)` for bounded variation.
- Keep gain conservative so denser states remain safe.

### 5. Part Toggles And Performance Stacks

The source grows from small channel examples into a larger performance stack
with pad, kick, clap, percussion, and hat roles. Controller input then becomes a
way to mute, transform, or bring back roles.

Teaching translation:

- Build one audible stock stack before discussing hardware routing.
- Use readable role names rather than device-specific identifiers.
- Present toggles as optional performance controls, not required setup.

### 6. Scene And CC Variation

The source sends CC values to change external hardware states. This is useful
as a performance design pattern, but it is hardware-dependent.

Teaching translation:

- Keep CC output commented by default.
- Use generic `ccn`, `ccv`, `midichan`, and `s "mydevice"` examples.
- Put setup details in the appendix instead of requiring them in the lesson.

## Source Caveats

- No source license file was found.
- The source includes hardware-specific setup and mapping images.
- SuperDirt MIDI setup varies by device, operating system, and installation.
- Controller input requires additional SuperCollider and OSC configuration.
- The local `.tidal` file is a stock-sample performance study with optional
  MIDI translations, not a hardware rig clone.
