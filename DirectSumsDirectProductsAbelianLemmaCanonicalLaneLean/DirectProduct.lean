import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianLemmaCanonicalLaneLean

structure DirectProductPackage where
  indexType : Type u
  componentType : Type v → Type w
  directProduct : Type x
  projectionMaps : directProduct → (∀ i : indexType, componentType i) → Prop
  universalProperty : Prop

structure DirectProductEvidence (P : DirectProductPackage) where
  projectionMapsClosed : P.projectionMaps
  universalPropertyClosed : P.universalProperty

def DirectProductClosed (P : DirectProductPackage) : Prop :=
  P.projectionMaps ∧ P.universalProperty

theorem direct_product_closed_from_evidence (P : DirectProductPackage) (E : DirectProductEvidence P) :
    DirectProductClosed P := by
  exact And.intro E.projectionMapsClosed E.universalPropertyClosed

end DirectSumsDirectProductsAbelianLemmaCanonicalLaneLean
end HautevilleHouse