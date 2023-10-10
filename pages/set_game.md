- Combinatorially analyze Set (the card game)

- Write a solver in Rust (just the logic, save computer vision for next blog)

## The Rules of Set

## Encoding Set

# Rust structs, enums

## Mathematical Properties of Set

Total number of triplets: $\binom{81}{3} = \frac{81\times 80 \times 79}{3\times 2}=85320$
Total number of Sets: $\frac{1}{3}\binom{81}{2} = 1080$
Triplets in 12 cards: $\binom{12}{3} = 220$
Each pair of cards can be finished into a valid Set (prove)

## Maximum Cards Without a Set

Easiest to start from a simplified version of Set: 3 properties with 3 values each, so that we can visualize all 27 cards in a finite 3D space.


