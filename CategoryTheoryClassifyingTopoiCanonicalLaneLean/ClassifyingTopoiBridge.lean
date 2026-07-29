import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClassifyingTopoiCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ToposCharacterizationClosed (A.object : ToposCharacterizationPackage)

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CategoryTheoryClassifyingTopoiCanonicalLaneLean
end HautevilleHouse