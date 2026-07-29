import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClassifyingTopoiCanonicalLaneLean

structure ClassifyingToposPackage where
  geometricTheory : Type u
  topos : Type v
  universalProperty : Prop
  modelCategory : Type w
  universalPropertyTerm : universalProperty
  modelTerm : modelCategory → Prop

structure ClassifyingToposEvidence (C : ClassifyingToposPackage) where
  universalPropertyClosed : C.universalProperty
  modelTermClosed : ∀ (M : C.modelCategory), C.modelTerm M

def ClassifyingToposClosed (C : ClassifyingToposPackage) : Prop :=
  C.universalProperty ∧ ∀ (M : C.modelCategory), C.modelTerm M

theorem classifying_topos_closed_from_evidence (C : ClassifyingToposPackage)
    (E : ClassifyingToposEvidence C) : ClassifyingToposClosed C := by
  exact And.intro E.universalPropertyClosed E.modelTermClosed

end CategoryTheoryClassifyingTopoiCanonicalLaneLean
end HautevilleHouse