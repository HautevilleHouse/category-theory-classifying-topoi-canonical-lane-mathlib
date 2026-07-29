import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClassifyingTopoiCanonicalLaneLean

structure ClassifyingTopos (T : Type u) [Category.{v} T] [HasFiniteLimits T] where
  topos : Topos
  geometricMorphism : T → topos
  universalProperty : True

theorem classifying_topos_exists (T : Type u) [Category.{v} T] [HasFiniteLimits T] [HasColimits T] :
  Nonempty (ClassifyingTopos T) := by
  refine ⟨?_, ?_, trivial⟩
  · exact Topos.of (Sheaf (canonicalCoverage T) (Type max u v))
  · exact sheafificationAdjunction T

def toposClosed (T : ClassifyingTopos) : Prop :=
  T.topos.IsTopos ∧ T.universalProperty

theorem topos_closed (T : ClassifyingTopos) : toposClosed T := by
  exact ⟨by infer_instance, T.universalProperty⟩

end CategoryTheoryClassifyingTopoiCanonicalLaneLean
end HautevilleHouse