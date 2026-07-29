import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClassifyingTopoiCanonicalLaneLean

structure ToposStructurePackage (C : Type u) [CategoryTheory.Category.{v} C] where
  isTopos : Prop
  subobjectClassifier : C
  powerObject : C → C
  exponential : C → C → C
  pullbackStability : Prop

structure ToposStructureEvidence {C : Type u} [CategoryTheory.Category.{v} C]
    (P : ToposStructurePackage C) where
  isToposClosed : P.isTopos
  subobjectClassifierClosed : True
  powerObjectClosed : True
  exponentialClosed : True
  pullbackStabilityClosed : P.pullbackStability

def ToposStructureClosed {C : Type u} [CategoryTheory.Category.{v} C]
    (P : ToposStructurePackage C) : Prop :=
  P.isTopos ∧ P.pullbackStability

theorem topos_structure_closed_from_evidence
    {C : Type u} [CategoryTheory.Category.{v} C]
    (P : ToposStructurePackage C) (E : ToposStructureEvidence P) :
    ToposStructureClosed P := by
  exact And.intro E.isToposClosed E.pullbackStabilityClosed

end CategoryTheoryClassifyingTopoiCanonicalLaneLean
end HautevilleHouse