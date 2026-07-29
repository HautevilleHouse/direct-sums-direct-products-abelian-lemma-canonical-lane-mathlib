import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianLemmaCanonicalLaneLean

structure DirectSumDecompositionPackage where
  abelianGroup : AbelianGroupPackage
  indexType : Type u
  subgroups : indexType → Set abelianGroup.carrier
  directSumProperty : (∀ i, subgroups i ∈ SubgroupClass abelianGroup) ∧ (∀ x : abelianGroup.carrier, ∃! (f : indexType → abelianGroup.carrier), (∀ i, f i ∈ subgroups i) ∧ x = ∑ i, f i)

structure DirectSumDecompositionEvidence (D : DirectSumDecompositionPackage) where
  directSumPropertyClosed : D.directSumProperty

def DirectSumDecompositionClosed (D : DirectSumDecompositionPackage) : Prop :=
  D.directSumProperty

theorem direct_sum_decomposition_closed_from_evidence (D : DirectSumDecompositionPackage) (E : DirectSumDecompositionEvidence D) :
    DirectSumDecompositionClosed D := by
  exact E.directSumPropertyClosed

end DirectSumsDirectProductsAbelianLemmaCanonicalLaneLean
end HautevilleHouse