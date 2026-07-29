import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClassifyingTopoiCanonicalLaneLean

structure Site (C : Type u) [Category.{v} C] where
  coverage : Coverage C

structure SheafOnSite (C : Type u) [Category.{v} C] (J : Coverage C) where
  presheaf : Cᵒᵖ ⥤ Type max u v
  sheafCondition : Presieve.IsSheaf J presheaf

theorem sheaf_category_is_topos (C : Type u) [Category.{v} C] (J : Coverage C) :
  IsTopos (Sheaf J (Type max u v)) := by
  infer_instance

end CategoryTheoryClassifyingTopoiCanonicalLaneLean
end HautevilleHouse