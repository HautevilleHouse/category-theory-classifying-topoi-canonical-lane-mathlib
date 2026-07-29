import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClassifyingTopoiCanonicalLaneLean

structure LimitPreservingFunctor (C D : Type u) [Category.{v} C] [Category.{v} D] (F : C ⥤ D) where
  preservesLimits : PreservesLimits F

structure ColimitPreservingFunctor (C D : Type u) [Category.{v} C] [Category.{v} D] (F : C ⥤ D) where
  preservesColimits : PreservesColimits F

theorem limit_preserving_iff_adjoint (C D : Type u) [Category.{v} C] [Category.{v} D] (F : C ⥤ D) :
  (PreservesLimits F) ↔ (IsLeftAdjoint F) := by
  constructor
  · intro h; exact Adjunction.ofRightAdjoint h
  · intro h; exact Adjunction.preservesLimitsOfLeftAdjoint h

theorem colimit_preserving_iff_adjoint (C D : Type u) [Category.{v} C] [Category.{v} D] (F : C ⥤ D) :
  (PreservesColimits F) ↔ (IsRightAdjoint F) := by
  constructor
  · intro h; exact Adjunction.ofLeftAdjoint h
  · intro h; exact Adjunction.preservesColimitsOfRightAdjoint h

end CategoryTheoryClassifyingTopoiCanonicalLaneLean
end HautevilleHouse