import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Algebra.DirectSum.Module

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianLemma

structure DirectSumBasisPackage (R : Type u) [Semiring R] (ι : Type v) where
  carrier : Type w
  module : Module R carrier
  basis : Basis ι R carrier
  directSumDecomposition : DirectSum _ (λ i : ι => R) ≃ₗ[R] carrier

structure DirectSumBasisEvidence {R : Type u} [Semiring R] {ι : Type v}
    (D : DirectSumBasisPackage R ι) where
  basisClosed : D.basis.Nonempty
  decompositionClosed : D.directSumDecomposition.Bijective

def DirectSumBasisClosed {R : Type u} [Semiring R] {ι : Type v}
    (D : DirectSumBasisPackage R ι) : Prop :=
  D.basis.Nonempty ∧ D.directSumDecomposition.Bijective

theorem direct_sum_basis_closed_from_evidence
    {R : Type u} [Semiring R] {ι : Type v}
    (D : DirectSumBasisPackage R ι) (E : DirectSumBasisEvidence D) :
    DirectSumBasisClosed D := by
  exact And.intro E.basisClosed E.decompositionClosed

end DirectSumsDirectProductsAbelianLemma
end HautevilleHouse
