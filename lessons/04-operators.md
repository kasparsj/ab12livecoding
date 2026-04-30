## Best sources on structure operators

**1. Official Tidal docs: “Pattern Structure”**
This is the main source. It explains exactly how `|+|`, `|+`, `+|`, `|>`, and `#` decide whether the resulting pattern takes its **rhythmic structure** from the left side, right side, or both sides. It explicitly says `+` is an alias for `|+|`, `|+` takes structure from the left, `+|` from the right, and `#` is an alias for `|>`. ([Tidal Cycles][1])

**2. Official Tidal tutorial: “Combining Types of Patterns”**
This is the most musician-friendly explanation. It shows examples like:

```haskell
d1 $ sound "bd sn drum arpy" # pan "0 1 0.25 0.75"
```

and explains that this combines a sound pattern with a pan pattern. It also says `#` is shorthand for `|>`, and that for this kind of combination the left-most pattern determines the rhythmic structure. ([Tidal Cycles][2])

**3. Tidal Club / Uzu lesson: “Combining patterns with arithmetic”**
This is probably the best hands-on worksheet. It gives practical examples for `#`, `|>`, `|+`, `+|`, and `|+|`, including what happens when you combine the same control, like `n`, more than once. It clearly explains `#`/`|>` as “structure from the left, values from the right,” and `+|` as “rhythm from the right, values added from both sides.” ([Uzu][3])

**4. “Learning Tidal Fundamentals”**
This is the deeper technical source. It explains the underlying pattern machinery: Tidal patterns are queried over time, and operators like `|+` and `+|` are built on more general pattern-combination operators. Use this when the official docs still feel magical. ([mzadel.github.io][4])

---

## The core idea

Every pattern-structure operator answers two questions:

```text
1. Where does the rhythm / event structure come from?
2. How are the values combined or selected?
```

For example:

```haskell
"2 3" +| "4 5 6"
```

means:

```text
Take structure from the right pattern: "4 5 6"
But add values from both sides.
```

The official docs give the result as:

```haskell
"6 7 9"
```

because the right side has three events, so the result has three events. ([Tidal Cycles][1])

---

## Operator cheat sheet

| Operator | Structure comes from | Values come from / do what    | Simple meaning              |                            |                                     |
| -------- | -------------------- | ----------------------------- | --------------------------- | -------------------------- | ----------------------------------- |
| `#`      | left                 | right-side controls merged in | normal parameter attachment |                            |                                     |
| `        | >`                   | left                          | right                       | same as `#`                |                                     |
| `        | +                    | `                             | both                        | add values                 | additive merge, structure from both |
| `+`      | both                 | add values                    | alias for `                 | +                          | `                                   |
| `        | +`                   | left                          | add values                  | add, but keep left rhythm  |                                     |
| `+       | `                    | right                         | add values                  | add, but keep right rhythm |                                     |

The official docs state that `+` is an alias for `|+|`; `|+` takes structure from the left; `+|` takes structure from the right; and `#` is an alias for `|>`. ([Tidal Cycles][1])

---

## `#` / `|>`

These are the normal “attach parameter” operators.

```haskell
d1 $ s "bd sn" # gain "1 0.7 0.4"
```

Same as:

```haskell
d1 $ s "bd sn" |> gain "1 0.7 0.4"
```

Meaning:

```text
Use the rhythm of: s "bd sn"
Sample/match values from: gain "1 0.7 0.4"
```

So the sound pattern gives the event structure, and the gain pattern is mapped onto those events.

Important: with **control patterns**, `#` usually feels like “add this parameter.” But technically, it is combining control maps. If the two sides have different controls, like `sound` and `gain`, both controls survive. If the same control appears twice, the right-side value wins with `#`. The Uzu lesson demonstrates this with repeated `n` controls. ([Tidal Cycles][5])

Example:

```haskell
d1 $ n "0 1 ~ 2" # sound "numbers" # n "4 5"
```

The left rhythm stays, but the `n` values are taken from the later/right `n "4 5"` pattern.

---

## `|+|`

This means:

```text
Take structure from both sides.
Add matching values.
```

Official example:

```haskell
"2 3" + "4 5 6"
```

is equivalent to:

```haskell
"6 [7 8] 9"
```

because `+` is an alias for `|+|`. The middle event gets split where the left and right structures intersect. ([Tidal Cycles][1])

So this:

```haskell
"2 3" |+| "4 5 6"
```

also gives:

```haskell
"6 [7 8] 9"
```

Musically, `|+|` is useful when both patterns should affect the resulting rhythm.

Example:

```haskell
d1 $ n "0 1 2 [3 5]" # sound "cpu"
  |+| n "<[4 5 3 2] [5 4 3] [6 5]>"
```

The Uzu lesson uses this exact idea: add two `n` patterns, while taking structure from both sides, producing a more complex melodic/rhythmic result. ([Uzu][3])

---

## `+|`

This means:

```text
Take structure from the right.
Add values from both sides.
```

Official example:

```haskell
"2 3" +| "4 5 6"
```

becomes:

```haskell
"6 7 9"
```

because the right pattern has three events, so the output has three events. ([Tidal Cycles][1])

The Uzu lesson gives a very clear practical version:

```haskell
d1 $ n "0 1 2 3" # sound "numbers" +| n "4 5"
```

This becomes like:

```haskell
d1 $ n "4 7" # sound "numbers"
```

because the rhythm comes from `"4 5"` on the right; `4` matches with `0`, and `5` matches with `2`, giving `4+0` and `5+2`. ([Uzu][3])

---

## How to explain it simply

Say this:

> `#` / `|>` keeps the rhythm of the left pattern and maps the right pattern’s controls onto it.
> `|+|` adds two patterns and lets both rhythms affect the result.
> `+|` adds two patterns but keeps only the rhythm of the right pattern.

The most useful teaching example is:

```haskell
"2 3" |+| "4 5 6"  -- both structures: "6 [7 8] 9"
"2 3" |+  "4 5 6"  -- left structure: "6 8"
"2 3" +|  "4 5 6"  -- right structure: "6 7 9"
"2 3" |>  "4 5 6"  -- left structure, right values: "4 5"
```

For actual Tidal performance, most of the time you use:

```haskell
d1 $ s "bd sn" # gain "1 0.8"
```

and reach for `|+|`, `|+`, or `+|` when you want to **combine numerical controls**, for example adding note offsets, speed changes, squiz amounts, cutoff values, or other patternable numeric parameters.

[1]: https://tidalcycles.org/docs/reference/pattern_structure/ "Pattern Structure | Tidal Cycles"
[2]: https://tidalcycles.org/docs/getting-started/tutorial/ "Tutorial | Tidal Cycles"
[3]: https://club.tidalcycles.org/t/week-2-lesson-3-combining-patterns-with-arithmetic-plus-the-hurry-function/489 "Week 2 lesson 3 - Combining patterns with arithmetic, plus the 'hurry' function - Week 2 - effects, time, arithmetic - Uzu"
[4]: https://mzadel.github.io/tidalfundamentals/ "Learning Tidal Fundamentals"
[5]: https://tidalcycles.org/docs/reference/controls/ "Controls | Tidal Cycles"
