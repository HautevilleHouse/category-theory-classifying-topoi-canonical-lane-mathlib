import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClassifyingTopoiCanonicalLaneLean

structure GrothendieckTopologyPackage where
  coveringFamilies : Prop
  stabilityUnderPullback : Prop
  transitiveProperty : Prop
  sieveCondition : Prop

structure GrothendieckTopologyEvidence (G : GrothendieckTopologyPackage) where
  coveringFamiliesClosed : G.coveringFamilies
  stabilityUnderPullbackClosed : G.stabilityUnderPullback
  transitivePropertyClosed : G.transitiveProperty
  sieveConditionClosed : G.sieveCondition

def GrothendieckTopologyClosed (G : GrothendieckTopologyPackage) : Prop :=
  G.coveringFamilies ∧ G.stabilityUnderPullback ∧ G.transitiveProperty ∧ G.sieveCondition

theorem grothendieck_topology_closed_from_evidence (G : GrothendieckTopologyPackage) (E : GrothendieckTopologyEvidence G) : GrothendieckTopologyClosed G := by
  exact And.intro E.coveringFamiliesClosed (And.intro E.stabilityUnderPullbackClosed (And.intro E.transitivePropertyClosed E.sieveConditionClosed))

end CategoryTheoryClassifyingTopoiCanonicalLaneLean
end HautevilleHouse