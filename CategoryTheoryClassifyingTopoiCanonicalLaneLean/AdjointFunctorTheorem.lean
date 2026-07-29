import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClassifyingTopoiCanonicalLaneLean

structure AdjointFunctorPackage (C D : Type u) [Category C] [Category D] (F : C ⥤ D) where
  leftAdjoint : D ⥤ C
  rightAdjoint : D ⥤ C
  unit : 𝟭 C ⟶ leftAdjoint ⋙ F
  counit : F ⋙ rightAdjoint ⟶ 𝟭 D
  triangleLeft : Prop
  triangleRight : Prop
  triangleLeftTerm : triangleLeft
  triangleRightTerm : triangleRight

structure AdjointFunctorEvidence {C D : Type u} [Category C] [Category D] {F : C ⥤ D} (A : AdjointFunctorPackage C D F) where
  triangleLeftClosed : A.triangleLeft
  triangleRightClosed : A.triangleRight

def AdjointFunctorClosed {C D : Type u} [Category C] [Category D] {F : C ⥤ D} (A : AdjointFunctorPackage C D F) : Prop :=
  A.triangleLeft ∧ A.triangleRight

theorem adjoint_functor_closed_from_evidence {C D : Type u} [Category C] [Category D] {F : C ⥤ D} (A : AdjointFunctorPackage C D F) (E : AdjointFunctorEvidence A) : AdjointFunctorClosed A := by
  exact And.intro E.triangleLeftClosed E.triangleRightClosed

end CategoryTheoryClassifyingTopoiCanonicalLaneLean
end HautevilleHouse