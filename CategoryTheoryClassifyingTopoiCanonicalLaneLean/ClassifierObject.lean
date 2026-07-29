import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClassifyingTopoiCanonicalLaneLean

structure ClassifierObjectPackage where
  omegaObject : Type u
  truthMap : omegaObject → Prop
  pullbackCondition : Prop
  omegaObjectTerm : omegaObject
  truthMapTerm : truthMap
  pullbackConditionTerm : pullbackCondition

structure ClassifierObjectEvidence (C : ClassifierObjectPackage) where
  omegaObjectClosed : C.omegaObject
  truthMapClosed : C.truthMap
  pullbackConditionClosed : C.pullbackCondition

def ClassifierObjectClosed (C : ClassifierObjectPackage) : Prop :=
  C.omegaObject ∧ C.truthMap ∧ C.pullbackCondition

theorem classifier_object_closed_from_evidence (C : ClassifierObjectPackage) (E : ClassifierObjectEvidence C) : ClassifierObjectClosed C :=
  And.intro E.omegaObjectClosed (And.intro E.truthMapClosed E.pullbackConditionClosed)

end CategoryTheoryClassifyingTopoiCanonicalLaneLean
end HautevilleHouse