import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClassifyingTopoiCanonicalLaneLean

structure AdjointFunctorPackage where
  leftAdjoint : Type u → Type v
  rightAdjoint : Type u → Type v
  unitNaturalTransformation : Prop
  counitNaturalTransformation : Prop
  triangleIdentities : Prop
  unitTerm : unitNaturalTransformation
  counitTerm : counitNaturalTransformation
  triangleTerm : triangleIdentities

structure AdjointFunctorEvidence (A : AdjointFunctorPackage) where
  unitClosed : A.unitNaturalTransformation
  counitClosed : A.counitNaturalTransformation
  triangleClosed : A.triangleIdentities

def AdjointFunctorClosed (A : AdjointFunctorPackage) : Prop :=
  A.unitNaturalTransformation ∧ A.counitNaturalTransformation ∧ A.triangleIdentities

theorem adjoint_functor_closed_from_evidence (A : AdjointFunctorPackage)
    (E : AdjointFunctorEvidence A) : AdjointFunctorClosed A := by
  exact And.intro E.unitClosed (And.intro E.counitClosed E.triangleClosed)

end CategoryTheoryClassifyingTopoiCanonicalLaneLean
end HautevilleHouse