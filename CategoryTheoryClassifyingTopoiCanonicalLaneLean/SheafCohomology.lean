import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClassifyingTopoiCanonicalLaneLean

structure SheafCohomologyPackage (X : Type u) [TopologicalSpace X] where
  sheafCategory : Type v
  globalSections : sheafCategory ⥤ Type w
  cohomologyFunctors : ℕ → sheafCategory ⥤ Type w
  longExactSequence : Prop
  vanishingTheorems : Prop
  longExactSequenceTerm : longExactSequence
  vanishingTheoremsTerm : vanishingTheorems

structure SheafCohomologyEvidence {X : Type u} [TopologicalSpace X] (S : SheafCohomologyPackage X) where
  longExactSequenceClosed : S.longExactSequence
  vanishingTheoremsClosed : S.vanishingTheorems

def SheafCohomologyClosed {X : Type u} [TopologicalSpace X] (S : SheafCohomologyPackage X) : Prop :=
  S.longExactSequence ∧ S.vanishingTheorems

theorem sheaf_cohomology_closed_from_evidence {X : Type u} [TopologicalSpace X] (S : SheafCohomologyPackage X) (E : SheafCohomologyEvidence S) : SheafCohomologyClosed S := by
  exact And.intro E.longExactSequenceClosed E.vanishingTheoremsClosed

end CategoryTheoryClassifyingTopoiCanonicalLaneLean
end HautevilleHouse