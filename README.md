# Formalization of JSP-000767 (Erdős Problem #924)

## Problem Overview

**Catalog ID:** [JSP-000767](https://github.com/TheJustinSunPrize/awards/blob/main/problems/catalog-0701-0800.md#JSP-000767)  
**Erdős Problem:** [#924](https://www.erdosproblems.com/924)  
**Mathematical Area:** Graph theory / Ramsey theory  

### Problem Statement
Can a graph exclude a larger clique while forcing a smaller monochromatic clique under every prescribed multicolor edge coloring?

Specifically, Erdős and Hajnal asked whether for every number of colors $k \ge 2$ and clique size $l \ge 3$, there exists a finite graph $G$ containing no $K_{l+1}$ (i.e. $K_{l+1}$-free) such that every edge coloring of $G$ with $k$ colors contains a monochromatic clique $K_l$. While Jon Folkman (1970) proved the initial special case $k=2, l=3$, the general theorem for arbitrary $k$ colors and arbitrary clique size $l$ was established in full generality by Jaroslav Nešetřil and Vojtěch Rödl (1976).

### Resolution
Affirmatively resolved in full generality by Jaroslav Nešetřil and Vojtěch Rödl (1976):
- **Primary Reference:** J. Nešetřil and V. Rödl, *The Ramsey property for graphs with forbidden complete subgraphs*, J. Combinatorial Theory Ser. B 20 (1976), 243–249. [doi:10.1016/0095-8956(76)90015-0](https://doi.org/10.1016/0095-8956(76)90015-0).
- **Initial Case ($k=2, l=3$):** J. Folkman, *Graphs with monochromatic complete subgraphs in every edge coloring*, SIAM J. Appl. Math. 19 (1970), 19–24. [doi:10.1137/0118004](https://doi.org/10.1137/0118004).

## Formalization Details

- **Target File:** `JSP_000767.lean`
- **Underlying Formalization:** `ErdosProblems/Erdos924.lean` (with `ErdosProblems/Erdos161/Ramsey.lean` and `ErdosProblems/Erdos1098.lean`)
- **Main Theorem:**
  ```lean
  theorem jsp_000767_solved :
      ∀ k l : ℕ, 2 ≤ k → 3 ≤ l →
        ∃ (V : Type) (_ : Fintype V) (G : SimpleGraph V),
          G.CliqueFree (l + 1) ∧ Erdos924.IsEdgeRamseyForClique G k l :=
    Erdos924.erdos_924
  ```
- **Axioms Check:**
  `#print axioms jsp_000767_solved` depends strictly on standard foundational Lean axioms:
  ```lean
  [propext, Classical.choice, Quot.sound]
  ```
  Zero `sorry`, zero `admit`, zero custom axioms.

## Build & Verification Instructions

### Toolchain
- **Lean:** `leanprover/lean4:v4.33.0`
- **Mathlib:** `v4.33.0`

### Build
```bash
lake exe cache get
lake build
```

## Attribution & Provenance
- **Mathematical Solution:** Jaroslav Nešetřil and Vojtěch Rödl (1976); Jon Folkman (1970).
- **Formal Authors:** OpenAI Codex, GPT-5.6 Sol, with upstream formalization in `plby/lean-proofs` (`src/latest/ErdosProblems/Erdos924.lean`).
- **Packaging & Verification:** Maintained and verified by 赵钦 (Qin Zhao, GitHub: [@Drag0ndddd1118](https://github.com/Drag0ndddd1118)).
