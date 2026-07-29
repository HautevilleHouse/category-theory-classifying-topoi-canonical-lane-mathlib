import canonicalLaneMathlib.ToposObjects

namespace HautevilleHouse
namespace CategoryTheoryClassifyingTopoiCanonicalLaneLean

structure GrothendieckTopology (C : Type u) [Category C] where
  sieves : ∀ (X : C), Set (Sieve X)
  pullbackStable : ∀ {X Y : C} (f : Y ⟶ X) (S : Sieve X), S ∈ sieves X → (S.pullback f) ∈ sieves Y
  localCharacter : ∀ {X : C} (S : Sieve X), (∀ (f : Y ⟶ X) [Mono f], S.pullback f ∈ sieves Y) → S ∈ sieves X

structure SheafConditionPackage (C : Type u) [Category C] (J : GrothendieckTopology C) where
  sheafCondition : ∀ (F : Presheaf C) (X : C) (S : Sieve X) (hS : S ∈ J.sieves X), F.IsSheafFor S
  sheafification : Functor (Presheaf C) (Sheaf J)
  plusConstruction : Presheaf C → Presheaf C

def SheafConditionClosed (P : SheafConditionPackage C J) : Prop :=
  P.sheafCondition ∧ IsLeftAdjoint P.sheafification

theorem sheaf_condition_closed (P : SheafConditionPackage C J) : SheafConditionClosed P :=
  And.intro P.sheafCondition (by
    have : P.sheafification ⊣ sheafToPresheaf J := sheafificationAdjunction J
    exact ⟨this⟩)

end CategoryTheoryClassifyingTopoiCanonicalLaneLean
end HautevilleHouse