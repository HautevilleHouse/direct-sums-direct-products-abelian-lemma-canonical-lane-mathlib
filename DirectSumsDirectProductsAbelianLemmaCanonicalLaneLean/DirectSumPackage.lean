import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianLemmaCanonicalLaneLean

structure DirectSumPackage (I : Type u) (α : I → Type v) [∀ i, AddCommGroup (α i)] where
  carrier : Type w
  injection : ∀ i, α i → carrier
  universalProperty : ∀ (β : Type w) [AddCommGroup β] (f : ∀ i, α i → β) (h : ∀ i, AddMonoidHom (α i) β), ∃! φ : carrier → β, AddMonoidHom carrier β ∧ ∀ i, φ ∘ injection i = f i

structure DirectSumEvidence {I : Type u} {α : I → Type v} [∀ i, AddCommGroup (α i)]
    (D : DirectSumPackage I α) where
  injectionClosed : ∀ i, AddMonoidHom (α i) D.carrier
  universalPropertyClosed : D.universalProperty

def DirectSumClosed {I : Type u} {α : I → Type v} [∀ i, AddCommGroup (α i)]
    (D : DirectSumPackage I α) : Prop :=
  D.universalProperty

theorem direct_sum_closed_from_evidence {I : Type u} {α : I → Type v} [∀ i, AddCommGroup (α i)]
    (D : DirectSumPackage I α) (E : DirectSumEvidence D) : DirectSumClosed D := by
  exact E.universalPropertyClosed

end DirectSumsDirectProductsAbelianLemmaCanonicalLaneLean
end HautevilleHouse
