import canonicalLaneMathlib.AdmissibleClass
import Mathlib.CategoryTheory.Topos.Basic

namespace HautevilleHouse
namespace CategoryTheoryClassifyingTopoiCanonicalLaneLean

open CategoryTheory

structure ToposSpace where
  carrier : Type u
  star : carrier

def ToposHasObjects (C : Type u) [Category C] : Prop :=
  HasFiniteLimits C ∧ HasFiniteColimits C

structure ToposAdmittedObject where
  topos : ToposSpace
  hasFiniteLimits : Prop
  hasFiniteColimits : Prop
  classifyingTopos : Bool
  conclusion : classifyingTopos

def ToposWitnessClosed (O : ToposAdmittedObject) : Prop :=
  O.classifyingTopos

end CategoryTheoryClassifyingTopoiCanonicalLaneLean
end HautevilleHouse