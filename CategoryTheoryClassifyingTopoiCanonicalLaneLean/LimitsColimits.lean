import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClassifyingTopoiCanonicalLaneLean

structure LimitsColimitsPackage where
  category : Type u
  smallDiagram : Type v
  limitObject : Type w
  colimitObject : Type x
  limitExists : Prop
  colimitExists : Prop

structure LimitsColimitsEvidence (L : LimitsColimitsPackage) where
  limitExistsClosed : L.limitExists
  colimitExistsClosed : L.colimitExists

def LimitsColimitsClosed (L : LimitsColimitsPackage) : Prop :=
  L.limitExists ∧ L.colimitExists

theorem limits_colimits_closed_from_evidence
    (L : LimitsColimitsPackage) (E : LimitsColimitsEvidence L) :
    LimitsColimitsClosed L := by
  exact And.intro E.limitExistsClosed E.colimitExistsClosed

end CategoryTheoryClassifyingTopoiCanonicalLaneLean
end HautevilleHouse