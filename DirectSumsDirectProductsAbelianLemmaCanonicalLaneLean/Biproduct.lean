import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianLemmaCanonicalLaneLean

structure BiproductPackage where
  abelianGroup : AbelianGroupPackage
  finiteIndexType : Type u
  componentGroups : finiteIndexType → AbelianGroupPackage
  biproduct : AbelianGroupPackage
  inclusions : ∀ i : finiteIndexType, componentGroups i → biproduct
  projections : ∀ i : finiteIndexType, biproduct → componentGroups i
  biproductProperties : (∀ i, projections i ∘ inclusions i = id) ∧ (∑ i, inclusions i ∘ projections i = id)

structure BiproductEvidence (B : BiproductPackage) where
  biproductPropertiesClosed : B.biproductProperties

def BiproductClosed (B : BiproductPackage) : Prop :=
  B.biproductProperties

theorem biproduct_closed_from_evidence (B : BiproductPackage) (E : BiproductEvidence B) :
    BiproductClosed B := by
  exact E.biproductPropertiesClosed

end DirectSumsDirectProductsAbelianLemmaCanonicalLaneLean
end HautevilleHouse