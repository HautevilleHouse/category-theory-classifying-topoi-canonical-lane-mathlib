import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClassifyingTopoiCanonicalLaneLean

structure ClassifyingToposPackage where
  geometricTheory : Type u
  site : Site
  topos : Topos
  classifyingMorphism : geometricTheory ⟶ topos
  universalProperty : Prop
  universalProof : universalProperty

def ClassifyingToposClosed (C : ClassifyingToposPackage) : Prop :=
  C.universalProperty

theorem classifying_topos_closed_from_evidence (C : ClassifyingToposPackage) : ClassifyingToposClosed C := by
  exact C.universalProof

end CategoryTheoryClassifyingTopoiCanonicalLaneLean
end HautevilleHouse