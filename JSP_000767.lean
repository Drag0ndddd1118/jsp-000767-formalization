import Erdos582

/-- Formal Lean 4 bridge theorem for JSP-000767 (Erdős Problem #582). -/
theorem jsp_000767_solved :
    ∃ (V : Type) (_ : Fintype V) (_ : DecidableEq V) (G : SimpleGraph V),
      G.cliqueNum = 3 ∧ Erdos582.EdgeRamseyTriangle G :=
  Erdos582.erdos_582

#print axioms jsp_000767_solved
-- 'jsp_000767_solved' depends on axioms: [propext, Classical.choice, Quot.sound]
