import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClassifyingTopoiCanonicalLaneLean

structure ToposPackage {C : GrothendieckSite} (S : SiteSheafPackage C) where
  toposCategory : Type u
  subobjectClassifier : Type v
  exponential : Type w
  subobjectClassifierProperty : Prop
  exponentialProperty : Prop
  subobjectClassifierPropertyTerm : subobjectClassifierProperty
  exponentialPropertyTerm : exponentialProperty

structure ToposEvidence {C : GrothendieckSite} {S : SiteSheafPackage C} (T : ToposPackage S) where
  subobjectClassifierClosed : T.subobjectClassifierProperty
  exponentialClosed : T.exponentialProperty

def ToposClosed {C : GrothendieckSite} {S : SiteSheafPackage C} (T : ToposPackage S) : Prop :=
  T.subobjectClassifierProperty ∧ T.exponentialProperty

theorem topos_closed_from_evidence
    {C : GrothendieckSite} {S : SiteSheafPackage C} (T : ToposPackage S) (E : ToposEvidence T) :
    ToposClosed T := by
  exact And.intro E.subobjectClassifierClosed E.exponentialClosed

end CategoryTheoryClassifyingTopoiCanonicalLaneLean
end HautevilleHouse