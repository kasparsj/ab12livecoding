# TidalCycles Cheatsheet

Use this as a dense practice sheet while live coding. It favors forms that are easy to type, easy to explain, and useful in performance.

## Research Basis

Checked against current Tidal documentation on 2026-04-30:

- [Mini Notation](https://tidalcycles.org/docs/reference/mini_notation/)
- [Pattern Structure](https://tidalcycles.org/docs/reference/pattern_structure/)
- [Tempo](https://tidalcycles.org/docs/reference/tempo/)
- [Controls](https://tidalcycles.org/docs/reference/controls/)
- [Time](https://tidalcycles.org/docs/reference/time/)
- [Conditions](https://tidalcycles.org/docs/reference/conditions/)
- [Randomness](https://tidalcycles.org/docs/reference/randomness/)
- [Oscillators](https://tidalcycles.org/docs/reference/oscillators/)
- [Harmony & Melody](https://tidalcycles.org/docs/reference/harmony_melody/)
- [Samplers](https://tidalcycles.org/docs/reference/samplers/)
- [Sampling](https://tidalcycles.org/docs/reference/sampling/)
- [Audio effects](https://tidalcycles.org/docs/reference/audio_effects/)
- [Transitions](https://tidalcycles.org/docs/reference/transitions/)
- [Composition](https://tidalcycles.org/docs/reference/composition/)

## Core Commands

```haskell
hush                         -- stop all running patterns
d1 silence                   -- stop slot d1
d1 $ s "bd sn"               -- start or replace slot d1
p "drums" $ s "bd sn"        -- named pattern
p "drums" silence            -- stop named pattern

setcps 1                     -- cycles per second; if a cycle is 2 beats, this is 120 bpm
resetCycles                  -- reset the global cycle count

qtrigger $ s "bd*4"          -- quantized trigger from the next cycle boundary
trigger  $ s "bd*4"          -- immediate trigger
```

## Mental Model

- A cycle is the repeating time container. Pattern functions reshape events inside or across cycles.
- `s` and `sound` trigger samples/synths. `n`, `note`, `gain`, `pan`, `speed`, `lpf`, etc. are controls.
- Most things are patternable: numbers, sample names, notes, effects, functions, and choices.
- `#` is an alias for `|>`. It takes event structure from the left and control values from the right.
- When two patterns disagree rhythmically, ask: which side supplies the structure?

```haskell
d1 $ s "bd*4" # gain "1 0.8 0.7 0.8"       -- sound pattern gives rhythm
d1 $ gain "1 0.8 0.7 0.8" # s "bd"         -- gain pattern gives rhythm

d1 $ s "bd sn" |+ n "0 2 4"                 -- structure from left
d1 $ s "bd sn" +| n "0 2 4"                 -- structure from right
d1 $ s "bd sn" |+| n "0 2 4"                -- structure from both
```

## Mini-Notation

| Syntax | Meaning | Example |
| --- | --- | --- |
| `~` | rest | `s "bd ~ sn ~"` |
| `[ ]` | group within one step | `s "bd [hh hh] sn hh"` |
| `.` | top-level grouping shorthand | `s "bd*3 . hh*4 cp"` |
| `,` | play at the same time | `s "[bd*2, hh*8, ~ cp]"` |
| `*` | repeat inside the step/cycle | `s "bd*4 sn"` |
| `/` | slow a step or group down | `s "bd/2 sn"` |
| `!` | replicate into separate steps | `s "bd!3 sn"` |
| `< >` | alternate choices by cycle | `s "bd <sn cp>"` |
| <code>&#124;</code> | random choice inside brackets | <code>s "[bd&#124;sn&#124;cp]*4"</code> |
| `?` | randomly drop events | `s "bd? hh*4 sn?"` |
| `?0.8` | drop with custom probability | `s "hh?0.8*8"` |
| `_` | extend previous event | `s "bd _ _ ~ sn _"` |
| `@` | repeat duration shorthand | `s "superpiano@3 superpiano"` |
| `:` | sample index | `s "bd:3 sn:2"` |
| `(k,n)` | Euclidean rhythm | `s "bd(3,8)"` |
| `{ }` | polymetric sequence | `s "{bd bd bd, cp cp hh}"` |
| `%` | numeric ratio | `s "bd*4%2"` |
| `{ }%n` | polymeter over subdivision | `s "{bd cp hh}%8"` |

## Fast Pattern Recipes

```haskell
-- Kick/snare/hat grid.
d1 $ s "bd [~ bd] sn [~ bd]"
d2 $ s "hh*8" # gain 0.45

-- One slot, layered.
d1 $ stack [
  s "bd(3,8)",
  s "~ sn ~ sn",
  s "hh*8" # gain 0.45
]

-- Sample folder and sample index separated.
d1 $ n "0 1 2 3" # s "drum"
d1 $ n (run 8) # s "arpy"

-- Superposition in mini-notation.
d1 $ s "[bd*2, hh*8, ~ cp]"
```

## Time And Transformation

```haskell
d1 $ fast 2 $ s "bd sn"                    -- two cycles of pattern per cycle
d1 $ slow 2 $ s "bd sn"                    -- one pattern over two cycles
d1 $ hurry 2 $ s "bd sn"                   -- faster plus sample speed increase
d1 $ rev $ s "bd [hh sn] cp"               -- reverse each cycle
d1 $ palindrome $ s "bd hh sn hh"          -- forward then backward

d1 $ every 4 rev $ s "bd*2 [sn sn] cp"     -- transform every 4th cycle
d1 $ every 3 (fast 2) $ s "bd sn"          -- parenthesize transforms with args
d1 $ within (0, 0.5) (fast 2) $ s "bd sn hh hh"

d1 $ off (1/8) (|+ n 7) $ n "0 3 5" # s "superpiano"
d1 $ jux rev $ s "bd [hh sn] cp"           -- stereo original/transformed split
d1 $ swingBy (1/3) 4 $ s "hh*8"
```

## Conditions, Masks, And Rhythmic Logic

```haskell
d1 $ every 3 rev $ s "bd sn cp hh"
d1 $ whenmod 8 4 (fast 2) $ s "bd sn"
d1 $ ifp ((== 0) . (`mod` 2)) rev (fast 2) $ s "bd sn cp hh"

d1 $ struct "t f t t f t f t" $ s "cp"
d1 $ struct "1 0 1 0" $ s "hh"
d1 $ struct (every 3 inv "t(3,8)") $ s "cp"

d1 $ mask "t t ~ t" $ s "bd*8"
d1 $ substruct "t f t f" $ s "bd sd"

d1 $ euclid 3 8 $ s "bd"
d1 $ euclidInv 3 8 $ s "hh"
d1 $ euclidFull 5 8 (s "bd") (s "hh")
d1 $ struct (binary 163) $ s "cp"
d1 $ struct (binaryN 12 2946) $ s "hh"
d1 $ struct (necklace 16 [3,5,4,2,1]) $ s "sd"
```

## Randomness And Choice

```haskell
d1 $ degrade $ s "bd*8"                    -- randomly remove events
d1 $ degradeBy 0.25 $ s "bd*8"             -- lower drop probability
d1 $ sometimes (# crush 4) $ s "bd sn"
d1 $ often (fast 2) $ s "hh*4"
d1 $ rarely rev $ s "bd sn cp hh"
d1 $ someCycles (# room 0.8) $ s "arpy*8"

d1 $ s "drum*8" # n (irand 8)              -- random integer indices
d1 $ s "drum*8" # n (choose [0,2,3,5])
d1 $ s "drum*8" # n (wchoose [(0,0.5),(2,0.3),(7,0.2)])
d1 $ s "drum*8" # n (cycleChoose [0,2,5])  -- one choice per cycle
```

## Controls And Operators

```haskell
d1 $ s "bd sn" # gain "1 0.7" # pan "0.2 0.8"
d1 $ s "arpy*8" # speed "<1 2 0.5 -1>"
d1 $ s "bd*4" # orbit 1                    -- route to another SuperDirt orbit

-- Modify an existing numeric control.
d1 $ every 2 (|+ speed 1) $ s "arpy*4" |> speed 1
d1 $ every 2 (|* speed 1.5) $ s "arpy*4" |> speed 1

-- Structure operators.
"2 3" |+  "4 5 6"                          -- left structure
"2 3" +|  "4 5 6"                          -- right structure
"2 3" |+| "4 5 6"                          -- both structures
"2 3" |>  "4 5 6"                          -- left structure, right values
```

## Oscillators And Modulation

Oscillators are continuous patterns. Give them structure from another pattern, usually with `#`, `|>`, or `struct`.

```haskell
d1 $ s "bd*8" # pan sine
d1 $ s "bass:5*8" # lpf (range 200 5000 sine)
d1 $ s "bass:5*8" # lpf (slow 4 $ range 200 5000 sine)
d1 $ s "hh*16" # gain (range 0.4 0.9 tri)
d1 $ s "arpy*8" # speed (range 0.5 2 saw)

-- Common oscillator sources.
sine
cosine
square
tri
saw
isaw
rand
irand 8
smooth "0 1 0.25 0.75"
```

## Melody And Harmony

```haskell
d1 $ note "c d e g" # s "superpiano"
d1 $ n "0 2 4 7" # s "superpiano" # octave 4
d1 $ note "c4 e4 g4 b4" # s "superpiano"

-- Chords use apostrophe notation.
d1 $ n "c'maj e'min f'maj g'7" # s "superpiano"
d1 $ n "c4'maj e4'min f4'maj'o" # s "superpiano"

-- Arpeggiate chord patterns.
d1 $ arp "up" $ n "c'maj'4 e'min'4" # s "superpiano"
d1 $ arp "<up down diverge>" $ n "<a'm9'8 e'7sus4'8>" # s "superpiano"

-- Strum/roll chord events.
d1 $ rolled $ n "<a'm9'8 e'7sus4'8>" # s "superpiano"
```

## Sampling And Slicing

```haskell
d1 $ s "breaks125:1" # speed 1
d1 $ s "breaks125:1" # begin 0.25 # end 0.75
d1 $ s "breaks125:1" # legato 1

d1 $ chop 16 $ s "breaks125"
d1 $ slow 2 $ rev $ chop 16 $ s "breaks125"
d1 $ loopAt 8 $ chop 32 $ s "bev"

d1 $ slice 8 "7 6 5 4 3 2 1 0" $ s "breaks165" # legato 1
d1 $ splice 8 "[0 3 2 4] [4 .. 7]" $ s "breaks165"
d1 $ randslice 32 $ s "bev"
d1 $ fast 4 $ randslice 32 $ s "bev"
```

## Effects

```haskell
-- Amplitude and stereo.
# gain 0.8
# amp 0.6
# pan "0 0.5 1 0.5"

-- Delay and reverb.
# delay 0.35 # delayt 0.25 # delayfb 0.4
# lock 1 # delayt 0.25                    -- delay time as cycle multiple
# room 0.4 # size 0.7 # dry 0.6

-- Envelope and sample length.
# attack 0.01 # hold 0.05 # release 0.2
# legato 0.8

-- Filters.
# lpf 1200 # lpq 0.25
# hpf 300 # hpq 0.2
# bpf 1200 # bpq 0.3
# djf 0.7
# vowel "a e i o u"

-- Distortion and texture.
# shape 0.3
# distort 0.4
# triode 0.5
# crush 8
# coarse 4
# krush 0.5 # kcutoff 3000
# ring 0.3 # ringf 800
# tremdp 0.7 # tremr 8
```

## Transitions And Performance

```haskell
d1 $ s "bd(3,8) drum*4"
xfade 1 $ s "arpy*8" # n (run 8)
xfadeIn 1 8 $ s "arpy*8" # n (run 8)

jump 1 $ s "hh*8"
jumpIn 1 2 $ s "hh*8"                    -- after 2 cycles, not cycle-aligned
jumpIn' 1 2 $ s "hh*8"                   -- after 2 cycles, cycle-aligned
jumpMod 1 4 $ s "hh*8"                   -- at next cycle where cycle mod 4 == 0

clutch 1 $ s "[hh*4, odx(3,8)]"          -- degrades old while revealing new
interpolateIn 1 2 $ s "arpy*16" # cutoff 16000
wait 2 4 $ s "feel:4*4 cp*3"
```

## Arrangement Helpers

```haskell
-- Concatenate sections over cycles.
d1 $ cat [
  s "bd sn",
  s "bd*2 [sn cp]",
  s "[bd*2, hh*8] sn"
]

-- Explicit timeline. Use qtrigger so local time starts at zero.
d1 $ qtrigger $ seqPLoop [
  (0, 12, s "bd bd*2"),
  (4, 12, s "hh*2 [sn cp] cp"),
  (8, 12, s "arpy*8" # n (run 16))
]
```

## Common Gotchas

- `*` and `!` are different. `*` repeats within the current step; `!` makes repeated steps.
- `/` slows a pattern; `%` is numeric division/ratio syntax.
- Sample indices are zero-based: `bd:3` is the fourth sample in `bd`.
- Missing sample indices wrap around inside the folder instead of erroring.
- Continuous patterns like `sine`, `rand`, and `choose` need structure from somewhere else.
- When `every 3 (fast 2)` works but `every 3 fast 2` does not, the issue is Haskell argument grouping.
- `shape`, resonance, feedback, distortion, and gain can get loud quickly. Start low.
