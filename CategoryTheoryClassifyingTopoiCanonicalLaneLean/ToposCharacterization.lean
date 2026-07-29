import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClassifyingTopoiCanonicalLaneLean

structure ToposCharacterizationPackage where
  site : Type u
  topology : Type v
  sheaves : Type w
  grothendieckTopos : Prop
  classifyingTopos : Prop

structure ToposCharacterizationEvidence (T : ToposCharacterizationPackage) where
  grothendieckToposClosed : T.grothendieckTopos
  classifyingToposClosed : T.classifyingTopos

def ToposCharacterizationClosed (T : ToposCharacterizationPackage) : Prop :=
  T.grothendieckTopos ∧ T.classifyingTopos

theorem topos_characterization_closed_from_evidence
    (T : ToposCharacterizationPackage) (E : ToposCharacterizationEvidence T) :
    ToposCharacterizationClosed T := by
  exact And.intro E.grothendieckToposClosed E.classifyingToposClosed

end CategoryTheoryClassifyingTopoiCanonicalLaneLean
end HautevilleHouse