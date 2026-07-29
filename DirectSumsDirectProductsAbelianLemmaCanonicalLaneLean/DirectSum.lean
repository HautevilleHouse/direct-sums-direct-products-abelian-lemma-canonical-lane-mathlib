import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianLemmaCanonicalLaneLean

structure DirectSumPackage where
  indexType : Type u
  componentType : Type v → Type w
  directSum : Type x
  inclusionMaps : directSum → (∀ i : indexType, componentType i) → Prop
  universalProperty : Prop

structure DirectSumEvidence (D : DirectSumPackage) where
  inclusionMapsClosed : D.inclusionMaps
  universalPropertyClosed : D.universalProperty

def DirectSumClosed (D : DirectSumPackage) : Prop :=
  D.inclusionMaps ∧ D.universalProperty

theorem direct_sum_closed_from_evidence (D : DirectSumPackage) (E : DirectSumEvidence D) :
    DirectSumClosed D := by
  exact And.intro E.inclusionMapsClosed E.universalPropertyClosed

end DirectSumsDirectProductsAbelianLemmaCanonicalLaneLean
end HautevilleHouse