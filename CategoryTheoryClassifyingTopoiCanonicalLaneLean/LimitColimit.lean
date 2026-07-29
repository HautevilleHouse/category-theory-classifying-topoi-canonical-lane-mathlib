import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClassifyingTopoiCanonicalLaneLean

structure LimitColimitPackage where
  diagram : Type u
  limitObject : Type v
  colimitObject : Type w
  limitUniversalProperty : Prop
  colimitUniversalProperty : Prop
  limitTerm : limitUniversalProperty
  colimitTerm : colimitUniversalProperty

structure LimitColimitEvidence (L : LimitColimitPackage) where
  limitUniversalClosed : L.limitUniversalProperty
  colimitUniversalClosed : L.colimitUniversalProperty

def LimitColimitClosed (L : LimitColimitPackage) : Prop :=
  L.limitUniversalProperty ∧ L.colimitUniversalProperty

theorem limit_colimit_closed_from_evidence (L : LimitColimitPackage)
    (E : LimitColimitEvidence L) : LimitColimitClosed L := by
  exact And.intro E.limitUniversalClosed E.colimitUniversalClosed

end CategoryTheoryClassifyingTopoiCanonicalLaneLean
end HautevilleHouse