-- This module serves as the root of the `Projet` library.
-- Import modules here that should be built as part of the library.
import Projet.Basic

import Mathlib.Data.Real.Basic

/-- A simple definition of a square -/
def my_square (x : ℝ) : ℝ := x * x

/-- A fully solved lemma proving squares are non-negative -/
lemma square_nonneg (x : ℝ) : 0 ≤ my_square x := by
  -- We unfold our definition and use a built-in mathlib theorem
  dsimp [my_square]
  exact mul_self_nonneg x

/-- A famous theorem we are going to leave as 'sorry' -/
theorem fermat_last (x y z n : ℕ) (hn : n > 2) : x^n + y^n ≠ z^n := by
  sorry
