import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClassifyingTopoiCanonicalLaneLean

structure GeometricMorphismPackage (E F : Type u) [CategoryTheory.Category.{v} E] [CategoryTheory.Category.{v} F] where
  directImage : F → E
  inverseImage : E → F
  leftExact : Prop
  adjunction : Prop
  continuity : Prop

structure GeometricMorphismEvidence {E F : Type u} [CategoryTheory.Category.{v} E] [CategoryTheory.Category.{v} F]
    (P : GeometricMorphismPackage E F) where
  directImageClosed : True
  inverseImageClosed : True
  leftExactClosed : P.leftExact
  adjunctionClosed : P.adjunction
  continuityClosed : P.continuity

def GeometricMorphismClosed {E F : Type u} [CategoryTheory.Category.{v} E] [CategoryTheory.Category.{v} F]
    (P : GeometricMorphismPackage E F) : Prop :=
  P.leftExact ∧ P.adjunction ∧ P.continuity

theorem geometric_morphism_closed_from_evidence
    {E F : Type u} [CategoryTheory.Category.{v} E] [CategoryTheory.Category.{v} F]
    (P : GeometricMorphismPackage E F) (E' : GeometricMorphismEvidence P) :
    GeometricMorphismClosed P := by
  exact And.intro E'.leftExactClosed
    (And.intro E'.adjunctionClosed E'.continuityClosed)

end CategoryTheoryClassifyingTopoiCanonicalLaneLean
end HautevilleHouse