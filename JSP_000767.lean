import ErdosProblems.Erdos924

/-- Formal Lean 4 bridge theorem for JSP-000767 (Erdős Problem #924).
Nešetřil and Rödl (1976) proved that for any k ≥ 2 and l ≥ 3, there exists a
finite graph G which is K_{l+1}-free (excludes a larger clique) and is edge-Ramsey
for K_l in k colors (forcing a smaller monochromatic clique under every k-coloring). -/
theorem jsp_000767_solved :
    ∀ k l : ℕ, 2 ≤ k → 3 ≤ l →
      ∃ (V : Type) (_ : Fintype V) (G : SimpleGraph V),
        G.CliqueFree (l + 1) ∧ Erdos924.IsEdgeRamseyForClique G k l :=
  Erdos924.erdos_924

#print axioms jsp_000767_solved
-- 'jsp_000767_solved' depends on axioms: [propext, Classical.choice, Quot.sound]
