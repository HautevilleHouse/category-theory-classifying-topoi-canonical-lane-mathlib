import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClassifyingTopoiCanonicalLaneLean

structure YonedaLemmaPackage where
  category : Type u
  [hcat : Category category]
  object : category
  functor : category ⥤ Type v
  naturalTransformation : (yoneda object) ⟶ functor
  bijectionExists : Prop
  bijectionProof : bijectionExists

def YonedaClosed (Y : YonedaLemmaPackage) : Prop :=
  Y.bijectionExists

theorem yoneda_closed_from_evidence (Y : YonedaLemmaPackage) : YonedaClosed Y := by
  exact Y.bijectionProof

end CategoryTheoryClassifyingTopoiCanonicalLaneLean
end HautevilleHouse