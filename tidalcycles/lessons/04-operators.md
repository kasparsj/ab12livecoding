# Structure Operators

Pattern-structure operators decide two things:

1. which side supplies the rhythm or event structure
2. how values are selected or combined

The main operators in this lesson are `#`, `|>`, `|+|`, `|+`, and `+|`.
The official pattern-structure docs define `#` as an alias for `|>` and `+`
as an alias for `|+|`. ([Tidal Cycles][1])

## Operator Reference

| Operator | Structure comes from | Value behavior | Use |
| --- | --- | --- | --- |
| `#` | left | right-side controls are merged in | normal parameter attachment |
| `|>` | left | right-side values are sampled/mapped | explicit form of `#` |
| `|+|` | both | values are added | combined rhythm and value addition |
| `+` | both | values are added | alias for `|+|` |
| `|+` | left | values are added | add values while keeping left rhythm |
| `+|` | right | values are added | add values while keeping right rhythm |

## `#` and `|>`

These are the normal parameter operators in performance code:

```haskell
d1 $ s "bd sn" # gain "1 0.7 0.4"
```

Same as:

```haskell
d1 $ s "bd sn" |> gain "1 0.7 0.4"
```

The sound pattern supplies the event structure. The gain pattern supplies
values for those events. ([Tidal Cycles][2])

With different controls, both controls survive:

```haskell
s "bd sn" # gain "1 0.7"
```

With the same control repeated, the right-side value wins for `#`:

```haskell
d1 $ n "0 1 ~ 2" # s "numbers" # n "4 5"
```

The left rhythm stays, but the later `n "4 5"` pattern supplies the `n`
values.

## `|+|`

`|+|` takes structure from both sides and adds matching values.

```haskell
"2 3" |+| "4 5 6"
```

The official docs show the result as:

```haskell
"6 [7 8] 9"
```

Both input structures affect the output structure. Use it when two numeric
patterns should both shape the resulting rhythm. ([Tidal Cycles][1])

Example:

```haskell
d1 $ n "0 1 2 [3 5]" # s "cpu"
  |+| n "<[4 5 3 2] [5 4 3] [6 5]>"
```

## `|+`

`|+` adds values but keeps the left structure:

```haskell
"2 3" |+ "4 5 6"
```

The result keeps two events because the left pattern has two events.

Use it for fixed rhythms with moving offsets:

```haskell
d1 $ n "0 2 4 7" # s "superpiano" |+ n "<0 12>"
```

## `+|`

`+|` adds values but keeps the right structure:

```haskell
"2 3" +| "4 5 6"
```

The official docs show:

```haskell
"6 7 9"
```

The output has three events because the right pattern has three events.
([Tidal Cycles][1])

Example:

```haskell
d1 $ n "0 1 2 3" # s "numbers" +| n "4 5"
```

The rhythm comes from the right-side `n "4 5"` pattern.

## Teaching Example

```haskell
"2 3" |+| "4 5 6"  -- both structures: "6 [7 8] 9"
"2 3" |+  "4 5 6"  -- left structure
"2 3" +|  "4 5 6"  -- right structure: "6 7 9"
"2 3" |>  "4 5 6"  -- left structure, right values
```

For most performance code, start with:

```haskell
d1 $ s "bd sn" # gain "1 0.8"
```

Reach for `|+|`, `|+`, or `+|` when combining numeric controls such as notes,
speed offsets, cutoff values, squiz amounts, or modulation depths.

[1]: https://tidalcycles.org/docs/reference/pattern_structure/ "Pattern Structure | Tidal Cycles"
[2]: https://tidalcycles.org/docs/getting-started/tutorial/ "Tutorial | Tidal Cycles"
[4]: https://mzadel.github.io/tidalfundamentals/ "Learning Tidal Fundamentals"
[5]: https://tidalcycles.org/docs/reference/controls/ "Controls | Tidal Cycles"
