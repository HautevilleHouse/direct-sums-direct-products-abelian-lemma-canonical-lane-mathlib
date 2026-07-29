import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Algebra.DirectSum.Module

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianLemma

structure DirectProductBasisPackage (R : Type u) [Semiring R] (ι : Type v) where
  carrier : Type w
  module : Module R carrier
  basis : Basis ι R carrier
  directProductDecomposition : carrier ≃ₗ[R] ∀ i : ι, R

structure DirectProductBasisEvidence {R : Type u} [Semiring R] {ι : Type v}
    (D : DirectProductBasisPackage R ι) where
  basisClosed : D.basis.Nonempty
  decompositionClosed : D.directProductDecomposition.Bijective

def DirectProductBasisClosed {R : Type u} [Semiring R] {ι : Type v}
    (D : DirectProductBasisPackage R ι) : Prop :=
  D.basis.Nonempty ∧ D.directProductDecomposition.Bijective

theorem direct_product_basis_closed_from_evidence
    {R : Type u} [Semiring R] {ι : Type v}
    (D : DirectProductBasisPackage R ι) (E : DirectProductBasisEvidence D) :
    DirectProductBasisClosed D := by
  exact And.intro E.basisClosed E.decompositionClosed

end DirectSumsDirectProductsAbelianLemma
end HautevilleHouse
