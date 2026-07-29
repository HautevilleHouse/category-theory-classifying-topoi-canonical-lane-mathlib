import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClassifyingTopoiCanonicalLaneLean

structure YonedaEmbeddingPackage where
  category : Type u
  presheaves : Type v
  yonedaFunctor : Type w
  fullyFaithful : Prop
  denseEmbedding : Prop

structure YonedaEmbeddingEvidence (Y : YonedaEmbeddingPackage) where
  fullyFaithfulClosed : Y.fullyFaithful
  denseEmbeddingClosed : Y.denseEmbedding

def YonedaEmbeddingClosed (Y : YonedaEmbeddingPackage) : Prop :=
  Y.fullyFaithful ∧ Y.denseEmbedding

theorem yoneda_embedding_closed_from_evidence
    (Y : YonedaEmbeddingPackage) (E : YonedaEmbeddingEvidence Y) :
    YonedaEmbeddingClosed Y := by
  exact And.intro E.fullyFaithfulClosed E.denseEmbeddingClosed

end CategoryTheoryClassifyingTopoiCanonicalLaneLean
end HautevilleHouse