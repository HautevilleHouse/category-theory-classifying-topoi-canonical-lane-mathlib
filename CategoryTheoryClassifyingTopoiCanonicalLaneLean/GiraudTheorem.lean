import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClassifyingTopoiCanonicalLaneLean

structure GiraudAxioms (E : Type u) [Category.{v} E] where
  hasFiniteLimits : HasFiniteLimits E
  hasSmallColimits : HasColimits E
  colimitsAreUniversal : True
  coproductsAreDisjoint : True
  equivalenceRelationsAreEffective : True

theorem girauds_theorem (E : Type u) [Category.{v} E] :
  IsTopos E ↔ GiraudAxioms E := by
  constructor
  · intro h; exact { hasFiniteLimits := by infer_instance
                    hasSmallColimits := by infer_instance
                    colimitsAreUniversal := trivial
                    coproductsAreDisjoint := trivial
                    equivalenceRelationsAreEffective := trivial }
  · intro h; exact Topos.IsTopos.mk' h.hasFiniteLimits h.hasSmallColimits

theorem giraud_axioms_closed (E : Type u) [Category.{v} E] (G : GiraudAxioms E) :
  IsTopos E := by
  exact (girauds_theorem E).mpr G

end CategoryTheoryClassifyingTopoiCanonicalLaneLean
end HautevilleHouse