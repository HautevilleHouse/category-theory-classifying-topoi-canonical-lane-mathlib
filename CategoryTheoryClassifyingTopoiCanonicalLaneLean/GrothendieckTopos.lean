import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClassifyingTopoiCanonicalLaneLean

structure GrothendieckToposPackage where
  site : Type u
  coverage : Prop
  sheafCategory : Type v
  giraudAxioms : Prop
  gca : sheafCategory → Prop
  coverageTerm : coverage
  sheafTerm : sheafCategory
  gcaTerm : gca sheafTerm

structure GrothendieckToposEvidence (G : GrothendieckToposPackage) where
  coverageClosed : G.coverage
  sheafCategoryClosed : G.sheafCategory
  gcaClosed : G.gca G.sheafTerm

def GrothendieckToposClosed (G : GrothendieckToposPackage) : Prop :=
  G.coverage ∧ G.sheafCategory ∧ G.gca G.sheafTerm

theorem grothendieck_topos_closed_from_evidence (G : GrothendieckToposPackage)
    (E : GrothendieckToposEvidence G) : GrothendieckToposClosed G := by
  exact And.intro E.coverageClosed (And.intro E.sheafCategoryClosed E.gcaClosed)

end CategoryTheoryClassifyingTopoiCanonicalLaneLean
end HautevilleHouse