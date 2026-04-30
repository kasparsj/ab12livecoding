# Best sources for Euclidean rhythms + `struct` / binary rhythm patterns in TidalCycles

## Best core sources

### 1. Official Tidal docs: **Conditions → `struct`**

This is the most important source for `struct`.

It defines:

```haskell
struct :: Pattern Bool -> Pattern a -> Pattern a
```

and explains that `struct` places a rhythmic **boolean / binary structure** on another pattern. A boolean pattern uses `t` / `f`, or `1` / `0`, where `t` means “event happens” and `f` is silence. It also explicitly says Euclidean patterns can create boolean patterns, e.g.:

```haskell
d1 $ struct (every 3 inv "t(3,8)") $ sound "cp"
```

The docs say `"t(3,8)"` creates the pattern:

```text
t f t f t f f t
```

and `inv` flips it. ([tidalcycles.org][1])

This is the best page for understanding:

```haskell
struct "t(3,8)" $ s "bd"
struct "1 0 1 0" $ s "hh"
struct (binary 163) $ s "cp"
```

---

### 2. Official Tidal docs: **Mini Notation → Euclidean Sequences**

This is the best source for the mini-notation form:

```haskell
s "bd(3,8)"
s "hh(7,16)"
s "cp(5,8,2)"
```

The docs explain that `(x,y)` distributes `x` beats across `y` steps, and that a third number rotates/offsets the result. They also list examples like `(3,8)` as Cuban tresillo and `(5,8)` as Cuban cinquillo. ([tidalcycles.org][2])

Important examples:

```haskell
d1 $ s "[bd(3,8), cp(2,8), hh(7,8)]"
d1 $ s "bd(3,8,1)"
```

Use this source for **Euclidean rhythm notation inside strings**.

---

### 3. Official Tidal docs: **Conditions → `euclid`, `euclidInv`, `euclidFull`**

This page also explains the function form:

```haskell
d1 $ euclid 3 8 $ sound "cp"
```

is the same as:

```haskell
d1 $ sound "cp(3,8)"
```

It also shows that the parameters can themselves be patterned:

```haskell
d1 $ euclid "<3 5>" "[8 16]/4" $ s "bd"
```

and documents `euclidInv` and `euclidFull` for complementary/offbeat Euclidean rhythms. ([tidalcycles.org][1])

Use this source when you want to explain the difference between:

```haskell
s "bd(3,8)"
```

and:

```haskell
euclid 3 8 $ s "bd"
```

---

## Best sources for Kindohm-style usage

### 4. Kindohm’s 2021 Tidal meetup code

This is probably the most relevant **actual Kindohm-style source**. It shows exactly the pattern you mean:

```haskell
d1 $ struct "t(3,8)" $ midichan 0 # note "c3" # s "rytm"
```

and later:

```haskell
let main = "{1@7 1@11 1@13 1@8 1@3}%16"
    cpp = "{1@23 1@17}%16"
    chp = "1(<13 14 11 15>,16,<0 44 38 7 13 4>)"
```

then:

```haskell
struct main $ bd
struct main $ perc1
struct cpp $ cp
struct chp $ ch
```

So the technique is: define rhythm patterns separately, then reuse them as boolean/rhythmic structures for different instruments. ([GitHub][3])

This is very close to a DAW-style separation:

```haskell
rhythm = pattern of gates
voice  = sound / note / MIDI channel
struct rhythm voice
```

---

### 5. Kindohm interview on the Tidal blog

This is more conceptual, but it explains his style well. Kindohm says he likes using `stack` to create layers, Euclidean-like rhythms such as:

```haskell
sound "bd(3,8)"
```

and a “common rhythm” technique:

```haskell
let pat = "{1 ~ ~ 1 ~ 1*1 1 ~ ~ 1 1}%8"

d1 $ gain pat # s "bd"
d2 $ gain pat # s "arpy"
```

He describes this as defining a common rhythm for multiple patterns to use, so changing the rhythm updates all related parts. ([blog.tidalcycles.org][4])

That is basically the same idea as `struct`, except his older example uses `gain pat # s ...` as the rhythmic/control carrier.

---

## Best sources for the “why does this behave strangely?” part

### 6. Forum thread: **Euclid sequencing in place of randomness**

This is very useful because it addresses a common confusion:

```haskell
d1 $ struct "t(6,8)"  $ n "0 1 2 3 4 5" # syn1
d2 $ struct "t(6,16)" $ n "0 1 2 3 4 5" # syn1
```

Both have six Euclidean hits, but the note values do not advance like a hardware sequencer. The important point: Tidal is not necessarily saying “each Euclidean hit advances the note list by one.” It is aligning two patterns over time and sampling/intersecting their structure. ([TOPLAP forum][5])

This is essential if you’re explaining why:

```haskell
struct "t(5,8)" $ n "0 1 2 3 4"
```

does not always feel like “five gates stepping through five notes.”

---

### 7. Forum thread: **Changing sounds within Euclidean Rhythms**

This thread has a good practical clarification: Tidal sees `(5,8)` as an **8-step pattern with rests**, not as a modular-style stream of five triggers that advance another sequence. The user explicitly says this helped them understand why the samples/hits line up the way they do. ([Uzu][6])

This is one of the best sources for explaining the mental-model difference:

> Modular/DAW/sequencer thinking: “a Euclidean gate advances the next note.”
> Tidal thinking: “two cyclic patterns are aligned in time.”

---

## Best sources for binary rhythm generation

### 8. Official Tidal docs: **`binary`, `binaryN`, `ascii`, `necklace`**

The Conditions page documents boolean rhythm generators:

```haskell
binary 2946
binaryN 12 2946
ascii "x y"
necklace 12 [4,2]
```

and shows how they feed into `struct`. For example, `binary` converts integers into 8-bit boolean patterns, and `binaryN` lets you choose the number of bits. ([tidalcycles.org][1])

This is the “hidden” powerful part of `struct`: the first argument does not have to be a hand-written `"t f t f"` pattern. It can be generated.

---

### 9. Old Tidal userbase: **`binary`**

This older page is short but very direct. It says `binary` lets you express a boolean pattern as a decimal number, e.g. `163` becomes `10100011`, so these are equivalent:

```haskell
d1 $ struct (binary 163) $ sound "clap:4"

d1 $ struct "t f t f f f t t" $ sound "clap:4"
```

It also shows `binaryN` and `ascii`. ([userbase.tidalcycles.org][7])

Use this as a compact reference, but prefer the current official docs for modern usage.

---

## Best source for continuous patterns + `struct`

### 10. Tidal Club lesson: **continuous patterns + `struct`**

This lesson explains a subtle but important thing: continuous patterns like `sine` have values, but no discrete event structure. The lesson shows that putting a continuous pattern on the left of `#` gives silence because `#` takes rhythmic structure from the left. Then it shows using `struct` to give a sine pattern a Euclidean/binary rhythm:

```haskell
d1 $ speed (struct "t(3,8)" $ slow 2 $ range 0.5 2.5 sine)
  # sound "bd"
```

The explanation says the Euclidean rhythm is used to sample events from the continuous sine function. ([Uzu][8])

This is a very good source if you want to explain:

```haskell
struct rhythm $ range 0.5 2 sine
```

or why `struct` is not only for sounds, but also for shaping parameter patterns.

---

## Best theoretical source for Euclidean rhythms

### 11. Godfried Toussaint paper: **The Euclidean Algorithm Generates Traditional Musical Rhythms**

This is the classic paper behind the idea. It explains rhythms as binary sequences where `1` is an attack/onset and `0` is a silence/unaccented note, then defines Euclidean rhythms as `E(k,n)`, where `k` is the number of onsets and `n` is the total sequence length. It gives examples like `E(3,8)` as `[x . . x . . x .]`, the tresillo rhythm.

Use this if you want the math/history background behind:

```haskell
bd(3,8)
```

---

## Best adjacent / readable source

### 12. Strudel docs: **Euclid / EuclidRot**

Strudel is Tidal-inspired rather than Tidal itself, but its docs explain Euclidean rhythms clearly: `euclid(3,8)` means three onsets over eight steps, and `euclidRot(3,8,1)` rotates the pattern. It also explicitly maps mini-notation like `"x(3,8)"` to `.euclid(3,8)`. ([strudel.cc][9])

Useful when Tidal’s docs feel too terse.

---

## The explanation I’d use

For **plain Euclidean Tidal**:

```haskell
d1 $ s "bd(3,8)"
```

means:

> Put 3 `bd` hits as evenly as possible across 8 steps in one cycle.

For **`struct` style**:

```haskell
d1 $ struct "t(3,8)" $ s "bd"
```

means:

> Make a boolean Euclidean rhythm first, then use it as the rhythmic structure for the sound pattern.

For **Kindohm-style reusable rhythm variables**:

```haskell
do
  let main = "t(5,16)"
      clap = "t(2,8,1)"

  d1 $ stack [
      struct main $ s "bd",
      struct clap $ s "cp",
      struct main $ s "hh" # speed "2"
    ]
```

The mindset is:

```text
rhythm/gates are separate from instruments
struct applies a gate pattern to a sound/control pattern
stack layers several structured parts
```

And the main caveat:

> A Euclidean pattern in Tidal is not a hardware sequencer clock that advances another list one hit at a time. It is a cyclic pattern with true/false positions, and Tidal aligns that structure with the pattern you give to `struct`.

[1]: https://tidalcycles.org/docs/reference/conditions/ "Conditions | Tidal Cycles"
[2]: https://tidalcycles.org/docs/reference/mini_notation/ "Mini Notation | Tidal Cycles"
[3]: https://github.com/kindohm/tidal-meetup-2021-05-08 "GitHub - kindohm/tidal-meetup-2021-05-08 · GitHub"
[4]: https://blog.tidalcycles.org/index.html%3Fp%3D75.html "Interview with Mike Hodnick a.k.a. Kindohm – TidalCycles blog"
[5]: https://forum.toplap.org/t/euclid-sequencing-in-place-of-randomness/466 "Euclid sequencing in place of randomness - TidalCycles - TOPLAP forum"
[6]: https://uzu.lurk.org/t/changing-sounds-within-euclidean-rhythms/747/8 "Changing sounds within Euclidean Rhythms - #8 by DanD - TidalCycles - Uzu"
[7]: https://userbase.tidalcycles.org/binary.html "binary - TidalCycles userbase"
[8]: https://uzu.lurk.org/t/week-4-lesson-1-continuous-patterns-sine-square-tri-saw-and-random-functions/608 "Week 4 lesson 1 - continuous patterns - sine, square, tri, saw and random functions - Week 4 - waveforms, randomness - Uzu"
[9]: https://strudel.cc/learn/time-modifiers/ "
      Time Modifiers  Strudel
    "
