import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClassifyingTopoiCanonicalLaneLean

structure GrothendieckSite where
  category : Type u
  coveringSieves : Type v
  siteAxioms : Prop
  siteAxiomsTerm : siteAxioms

structure SheafOnSite (C : GrothendieckSite) where
  presheaf : Type w
  sheafCondition : Prop
  sheafConditionTerm : sheafCondition

structure SiteSheafPackage (C : GrothendieckSite) where
  sheafCategory : Type u
  sheafificationExists : Prop
  sheafificationIsLeftExact : Prop
  sheafificationExistsTerm : sheafificationExists
  sheafificationIsLeftExactTerm : sheafificationIsLeftExact

structure SiteSheafEvidence {C : GrothendieckSite} (P : SiteSheafPackage C) where
  sheafificationExistsClosed : P.sheafificationExists
  sheafificationIsLeftExactClosed : P.sheafificationIsLeftExact

def SiteSheafClosed {C : GrothendieckSite} (P : SiteSheafPackage C) : Prop :=
  P.sheafificationExists ∧ P.sheafificationIsLeftExact

theorem site_sheaf_closed_from_evidence
    {C : GrothendieckSite} (P : SiteSheafPackage C) (E : SiteSheafEvidence P) :
    SiteSheafClosed P := by
  exact And.intro E.sheafificationExistsClosed E.sheafificationIsLeftExactClosed

end CategoryTheoryClassifyingTopoiCanonicalLaneLean
end HautevilleHouse