import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianLemmaCanonicalLaneLean

structure DirectProductPackage (I : Type u) (α : I → Type v) [∀ i, AddCommGroup (α i)] where
  carrier : Type w
  projection : ∀ i, carrier → α i
  universalProperty : ∀ (β : Type w) [AddCommGroup β] (f : ∀ i, β → α i) (h : ∀ i, AddMonoidHom β (α i)), ∃! φ : β → carrier, AddMonoidHom β carrier ∧ ∀ i, projection i ∘ φ = f i

structure DirectProductEvidence {I : Type u} {α : I → Type v} [∀ i, AddCommGroup (α i)]
    (P : DirectProductPackage I α) where
  projectionClosed : ∀ i, AddMonoidHom P.carrier (α i)
  universalPropertyClosed : P.universalProperty

def DirectProductClosed {I : Type u} {α : I → Type v} [∀ i, AddCommGroup (α i)]
    (P : DirectProductPackage I α) : Prop :=
  P.universalProperty

theorem direct_product_closed_from_evidence {I : Type u} {α : I → Type v} [∀ i, AddCommGroup (α i)]
    (P : DirectProductPackage I α) (E : DirectProductEvidence P) : DirectProductClosed P := by
  exact E.universalPropertyClosed

end DirectSumsDirectProductsAbelianLemmaCanonicalLaneLean
end HautevilleHouse
