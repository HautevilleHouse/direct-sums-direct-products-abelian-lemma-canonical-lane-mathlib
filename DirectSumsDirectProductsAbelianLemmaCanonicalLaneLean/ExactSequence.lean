import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianLemmaCanonicalLaneLean

structure ExactSequencePackage {G : AbelianGroupPackage}
    {D : DirectSumPackage G} {P : DirectProductPackage G}
    (A : AbelianLemmaPackage D P) where
  kernelImage : A.directSumGroup → P.directProductGroup
  imageKernel : P.directProductGroup → A.directSumGroup
  exactAtMiddle : Prop
  chainCondition : Prop

structure ExactSequenceEvidence {G : AbelianGroupPackage}
    {D : DirectSumPackage G} {P : DirectProductPackage G}
    {A : AbelianLemmaPackage D P} (E : ExactSequencePackage A) where
  exactAtMiddleClosed : E.exactAtMiddle
  chainConditionClosed : E.chainCondition

def ExactSequenceClosed {G : AbelianGroupPackage}
    {D : DirectSumPackage G} {P : DirectProductPackage G}
    {A : AbelianLemmaPackage D P} (E : ExactSequencePackage A) : Prop :=
  E.exactAtMiddle ∧ E.chainCondition

theorem exact_sequence_closed_from_evidence
    {G : AbelianGroupPackage} {D : DirectSumPackage G} {P : DirectProductPackage G}
    {A : AbelianLemmaPackage D P} (E : ExactSequencePackage A)
    (Ev : ExactSequenceEvidence E) : ExactSequenceClosed E := by
  exact And.intro Ev.exactAtMiddleClosed Ev.chainConditionClosed

end DirectSumsDirectProductsAbelianLemmaCanonicalLaneLean
end HautevilleHouse