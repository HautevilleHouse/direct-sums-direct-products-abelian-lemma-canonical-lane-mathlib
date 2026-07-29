import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianLemmaCanonicalLaneLean

structure AdmittedAbelianObject (I : Type u) (α : I → Type v) [∀ i, AddCommGroup (α i)] where
  directSum : DirectSumPackage I α
  directProduct : DirectProductPackage I α
  canonicalMap : directSum.carrier → directProduct.carrier
  mapMono : Function.Injective canonicalMap
  mapEpiIfFinite : (Fintype I) → Function.Surjective canonicalMap

def abelianLemmaBridgeClosed (O : AdmittedAbelianObject I α) : Prop :=
  O.mapMono ∧ (∀ h : Fintype I, O.mapEpiIfFinite h)

theorem bridge_from_admissible_abelian_object (O : AdmittedAbelianObject I α) :
    abelianLemmaBridgeClosed O := by
  have hm : O.mapMono := O.mapMono
  have he : ∀ h : Fintype I, O.mapEpiIfFinite h := fun h => O.mapEpiIfFinite h
  exact And.intro hm he

end DirectSumsDirectProductsAbelianLemmaCanonicalLaneLean
end HautevilleHouse
