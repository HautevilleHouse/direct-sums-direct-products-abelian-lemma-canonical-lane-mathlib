import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianLemmaCanonicalLaneLean

structure AbelianGroupPackage where
  carrier : Type u
  addition : carrier → carrier → carrier
  zero : carrier
  negation : carrier → carrier
  associativity : Prop
  commutativity : Prop
  identityLaw : Prop
  inverseLaw : Prop

structure AbelianGroupEvidence (A : AbelianGroupPackage) where
  associativityClosed : A.associativity
  commutativityClosed : A.commutativity
  identityLawClosed : A.identityLaw
  inverseLawClosed : A.inverseLaw

def AbelianGroupClosed (A : AbelianGroupPackage) : Prop :=
  A.associativity ∧ A.commutativity ∧ A.identityLaw ∧ A.inverseLaw

theorem abelian_group_closed_from_evidence (A : AbelianGroupPackage) (E : AbelianGroupEvidence A) :
    AbelianGroupClosed A := by
  exact And.intro E.associativityClosed (And.intro E.commutativityClosed (And.intro E.identityLawClosed E.inverseLawClosed))

end DirectSumsDirectProductsAbelianLemmaCanonicalLaneLean
end HautevilleHouse