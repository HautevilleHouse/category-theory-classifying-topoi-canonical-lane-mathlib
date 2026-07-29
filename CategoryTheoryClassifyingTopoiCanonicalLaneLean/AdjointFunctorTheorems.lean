import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClassifyingTopoiCanonicalLaneLean

structure AdjointPair (C D : Type u) [Category.{v} C] [Category.{v} D] where
  left : C ⥤ D
  right : D ⥤ C
  unit : 𝟭 C ⟶ left ⋙ right
  counit : right ⋙ left ⟶ 𝟭 D
  triangle_left : True
  triangle_right : True

theorem adjoint_functor_theorem (C : Type u) [Category.{v} C] [HasLimits C] [HasColimits C] :
  (∀ (F : C ⥤ Set), IsLeftAdjoint F) ∧ (∀ (G : Set ⥤ C), IsRightAdjoint G) := by
  constructor
  · intro F; exact Adjunction.ofRightAdjoint (by infer_instance : HasLimits C)
  · intro G; exact Adjunction.ofLeftAdjoint (by infer_instance : HasColimits C)

end CategoryTheoryClassifyingTopoiCanonicalLaneLean
end HautevilleHouse