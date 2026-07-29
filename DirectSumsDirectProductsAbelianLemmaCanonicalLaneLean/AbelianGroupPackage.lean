import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianLemmaCanonicalLaneLean

structure AbelianGroupPackage (α : Type u) [AddCommGroup α] where
  underlying : Type u
  addition : underlying → underlying → underlying
  zero : underlying
  negation : underlying → underlying
  associative : ∀ a b c : underlying, addition (addition a b) c = addition a (addition b c)
  commutative : ∀ a b : underlying, addition a b = addition b a
  identity : ∀ a : underlying, addition a zero = a
  inverse : ∀ a : underlying, addition a (negation a) = zero

structure AbelianGroupEvidence {α : Type u} [AddCommGroup α] (A : AbelianGroupPackage α) where
  associativeClosed : A.associative
  commutativeClosed : A.commutative
  identityClosed : A.identity
  inverseClosed : A.inverse

def AbelianGroupClosed {α : Type u} [AddCommGroup α] (A : AbelianGroupPackage α) : Prop :=
  A.associative ∧ A.commutative ∧ A.identity ∧ A.inverse

theorem abelian_group_closed_from_evidence {α : Type u} [AddCommGroup α]
    (A : AbelianGroupPackage α) (E : AbelianGroupEvidence A) : AbelianGroupClosed A := by
  exact And.intro E.associativeClosed (And.intro E.commutativeClosed (And.intro E.identityClosed E.inverseClosed))

end DirectSumsDirectProductsAbelianLemmaCanonicalLaneLean
end HautevilleHouse
