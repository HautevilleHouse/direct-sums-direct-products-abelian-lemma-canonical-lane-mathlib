import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Algebra.DirectSum.Module

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianLemma

structure AbelianLemmaPackage (R : Type u) [Semiring R] (ι : Type v) where
  directSumBasis : DirectSumBasisPackage R ι
  directProductBasis : DirectProductBasisPackage R ι
  abelianLemma : DirectSum R ι ≃ₗ[R] ∀ i : ι, R

structure AbelianLemmaEvidence {R : Type u} [Semiring R] {ι : Type v}
    (A : AbelianLemmaPackage R ι) where
  abelianLemmaClosed : A.abelianLemma.Bijective

def AbelianLemmaClosed {R : Type u} [Semiring R] {ι : Type v}
    (A : AbelianLemmaPackage R ι) : Prop :=
  A.abelianLemma.Bijective

theorem abelian_lemma_closed_from_evidence
    {R : Type u} [Semiring R] {ι : Type v}
    (A : AbelianLemmaPackage R ι) (E : AbelianLemmaEvidence A) :
    AbelianLemmaClosed A := by
  exact E.abelianLemmaClosed

end DirectSumsDirectProductsAbelianLemma
end HautevilleHouse
