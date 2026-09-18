# Formalization of JSP-000767 (Erdős Problem #582)

## Problem Overview

**Catalog ID:** [JSP-000767](https://github.com/TheJustinSunPrize/awards/blob/main/problems/catalog-0701-0800.md#JSP-000767)  
**Erdős Problem:** [#582](https://www.erdosproblems.com/582)  
**Mathematical Area:** Graph theory / Ramsey theory  

### Problem Statement
Can a graph exclude a larger clique while forcing a smaller monochromatic clique under every prescribed multicolor edge coloring?

Specifically, Erdős and Hajnal asked whether there exists a graph containing no $K_4$ (clique number at most 3) such that every 2-coloring of its edges contains a monochromatic triangle $K_3$ ($G \to (K_3, K_3)^e$).

### Resolution
Affirmatively resolved by Jon Folkman (1970):
- **Reference:** J. Folkman, *Graphs with monochromatic complete subgraphs in every edge coloring*, SIAM J. Appl. Math. 19 (1970), 19–24. [doi:10.1137/0118004](https://doi.org/10.1137/0118004).

Folkman constructed an explicit (though astronomical in size) finite graph $G$ satisfying:
1. $\omega(G) = 3$ ($G$ contains triangles but no $K_4$),
2. For every 2-edge-coloring of $G$, there exists a monochromatic triangle $K_3$.

## Formalization Details

- **Target File:** `JSP_000767.lean`
- **Underlying Formalization:** `Erdos582.lean`
- **Main Theorem:**
  ```lean
  theorem jsp_000767_solved :
      ∃ (V : Type) (_ : Fintype V) (G : SimpleGraph V) (_ : DecidableRel G.Adj),
        SimpleGraph.cliqueNum G = 3 ∧
        ∀ (c : Sym2 V → Fin 2),
          ∃ (u v w : V), u ≠ v ∧ v ≠ w ∧ u ≠ w ∧
            G.Adj u v ∧ G.Adj v w ∧ G.Adj u w ∧
            c s(u, v) = c s(v, w) ∧ c s(v, w) = c s(u, w) :=
    Erdos582.erdos_582
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
lake update
lake exe cache get
lake build
```

## Attribution & Provenance
- **Mathematical Solution:** Jon Folkman (1970).
- **Formal Authors:** OpenAI Codex, GPT-5.6 Sol, with upstream formalization in `plby/lean-proofs` (`src/latest/ErdosProblems/Erdos582.lean`).
- **Packaging & Verification:** Maintained and verified by 秦超 / Qin Zhao (GitHub: [@Drag0ndddd1118](https://github.com/Drag0ndddd1118)).
