import Lake
open Lake DSL

package "jsp-000767-formalization" where

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.33.0"

lean_lib Erdos582

@[default_target]
lean_lib «JSP_000767» where
  roots := #[`JSP_000767, `Erdos582]
