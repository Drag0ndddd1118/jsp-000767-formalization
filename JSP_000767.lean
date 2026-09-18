import Erdos582

theorem jsp_000767_solved :
    ∃ (V : Type) (_ : Fintype V) (G : SimpleGraph V) (_ : DecidableRel G.Adj),
      SimpleGraph.cliqueNum G = 3 ∧
      ∀ (c : Sym2 V → Fin 2),
        ∃ (u v w : V), u ≠ v ∧ v ≠ w ∧ u ≠ w ∧
          G.Adj u v ∧ G.Adj v w ∧ G.Adj u w ∧
          c s(u, v) = c s(v, w) ∧ c s(v, w) = c s(u, w) :=
  Erdos582.erdos_582

#print axioms jsp_000767_solved
-- 'jsp_000767_solved' depends on axioms: [propext, Classical.choice, Quot.sound]
