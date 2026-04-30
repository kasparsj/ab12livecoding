# Best sources on conditionals

## 1. Official Tidal docs: **Conditions**

This is the main source for deterministic conditionals.

It covers:

```haskell
every
every'
foldEvery
when
whenT
whenmod
ifp
fix
contrast
struct
mask
sew
stitch
```

Best parts:

```haskell
d1 $ every 3 rev $ n "0 1 [~ 2] 3" # sound "arpy"
```

`every 3 rev` means: apply `rev` every third cycle, otherwise leave the pattern alone. The docs also explain that when the function has arguments, you need parentheses:

```haskell
d1 $ every 3 (fast 2) $ n "0 1 [~ 2] 3" # sound "arpy"
```

For `when`, the docs explain that it receives the **current cycle number** and applies the transformation only when your test returns `True`:

```haskell
d1 $ when ((elem '4').show) (striate 4) $ sound "hh hc"
```

That means: apply `striate 4` only on cycles whose cycle number contains the digit `4`. The same page explains `whenmod`, `ifp`, and control-pattern conditionals like `fix` and `contrast`. ([tidalcycles.org][1])

---

## 2. Official Tidal docs: **Randomness**

This is the main source for `sometimes`.

It covers the “sometimes family”:

```haskell
always
almostAlways
often
sometimes
rarely
almostNever
never
sometimesBy
someCycles
someCyclesBy
```

The docs define `sometimes` as applying a function to a pattern **around 50% of the time**, randomly:

```haskell
d1 $ sometimes (# crush 2) $ n "0 1 [~ 2] 3" # sound "arpy"
```

It also gives the probability aliases:

```text
always        100%
almostAlways 90%
often         75%
sometimes     50%
rarely        25%
almostNever   10%
never          0%
```

Important distinction: `sometimes` applies the function to **random events**, while `someCycles` applies it to **whole random cycles**. So `someCycles (# crush 2)` either crushes the whole cycle or leaves the whole cycle unchanged. ([tidalcycles.org][2])

---

## 3. Official Tidal tutorial: **Creating Variation / Fills**

This is the best practical source for using conditionals musically.

It shows how to layer deterministic conditionals:

```haskell
d1 $ every 5 (|+| speed "0.5") $ every 4 (0.25 <~) $ every 3 rev $
  sound "bd sn arpy*2 cp"
  # speed "[1 1.25 0.75 -1.5]/3"
```

It also explains `whenmod` as a fill tool. Example:

```haskell
d1 $ whenmod 8 6 rev $ sound "bd*2 arpy*2 cp hh*4"
```

This means: play normally for six cycles, then reverse for two cycles, then repeat. The same tutorial shows using `every` and `whenmod` with `const` to completely replace a pattern for fills. ([tidalcycles.org][3])

---

## 4. Uzu / Tidal Club lesson: **Random marathon part 2**

This is the best community/tutorial source for `sometimes`, `someCycles`, `degrade`, and related random functions.

The lesson is structured as a video/worksheet and explicitly covers:

```text
degrade
degradeBy
sometimes
sometimesBy
rarely
often
almostNever
almostAlways
someCycles
randslice
```

The timestamps are useful: it lists `sometimes` at 11:21, `sometimesBy` at 12:10, the shorthand variants at 13:38, and `someCycles` at 14:16. ([Uzu][4])

This is probably the best learning source after the official docs.

---

## 5. Official Tidal docs: **Boolean / pattern conditions**

This is still part of the Conditions page, but it is worth treating separately because it explains a different kind of conditional: boolean pattern gates.

Important functions:

```haskell
struct
mask
sew
stitch
```

Example:

```haskell
d1 $ struct (every 3 inv "t(3,8)") $ sound "cp"
```

This combines `every` with a boolean Euclidean rhythm. Every third cycle, `inv` flips the true/false structure, so the rhythm changes conditionally. The same section explains that boolean patterns can use `t/f` or `1/0`, and that Euclidean patterns like `"t(3,8)"` produce true/false values. ([tidalcycles.org][1])

This is important because Tidal conditionals are not only “every N cycles”; they can also be **event masks**, **boolean gates**, and **pattern switches**.

---

## 6. Learning Tidal Fundamentals

This is not the best beginner source, but it is the best deep/internals source. It explains Tidal’s pattern model, types, and APIs. The author says the goal is to understand Tidal’s expressions and values, not just make sound, and that it is especially useful for people writing their own Tidal libraries. ([Mzadel][5])

Use this when you want to understand why functions like:

```haskell
every 3 rev
sometimes (# crush 2)
when ((== 0) . (`mod` 4)) (fast 2)
```

are all just transformations of a `Pattern`.

---

## Practical explanation

In Tidal, most conditionals are really:

```haskell
condition + transformation + pattern
```

For example:

```haskell
every 4 rev $ s "bd sn hh cp"
```

means:

```text
Every 4 cycles, apply rev to the pattern.
Otherwise, play it normally.
```

```haskell
whenmod 8 6 rev $ s "bd sn hh cp"
```

means:

```text
In an 8-cycle block, apply rev when the cycle position is 6 or higher.
So: 6 normal-ish cycles, then 2 transformed cycles.
```

```haskell
sometimes (# crush 2) $ s "bd sn hh cp"
```

means:

```text
Randomly apply # crush 2 to some events.
```

```haskell
someCycles (# crush 2) $ s "bd sn hh cp"
```

means:

```text
Randomly apply # crush 2 to whole cycles.
```

## Best reading order

1. **Official Conditions** — `every`, `when`, `whenmod`, `ifp`, `struct`, `mask`.
2. **Official Randomness** — `sometimes`, `sometimesBy`, `someCycles`, `degrade`.
3. **Official Tutorial** — musical fills and layered variation.
4. **Uzu random marathon lesson** — hands-on random conditionals.
5. **Learning Tidal Fundamentals** — internals, if you want to go deeper.

[1]: https://tidalcycles.org/docs/reference/conditions/ "Conditions | Tidal Cycles"
[2]: https://tidalcycles.org/docs/reference/randomness/?utm_source=chatgpt.com "Randomness"
[3]: https://tidalcycles.org/docs/getting-started/tutorial/ "Tutorial | Tidal Cycles"
[4]: https://uzu.lurk.org/t/week-4-lesson-3-random-marathon-part-2-randcat-stripe-degrade-sometimes-somecycles-randslice-more/690 "Week 4, lesson 3 - random marathon part 2: randcat, stripe, degrade, sometimes, someCycles, randslice + more - Week 4 - waveforms, randomness - Uzu"
[5]: https://mzadel.github.io/tidalfundamentals/ "Learning Tidal Fundamentals"
