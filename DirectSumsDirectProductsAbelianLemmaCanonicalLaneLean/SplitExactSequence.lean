import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianLemmaCanonicalLaneLean

structure SplitExactSequencePackage where
  left : AbelianGroupPackage
  middle : AbelianGroupPackage
  right : AbelianGroupPackage
  leftMap : left.carrier → middle.carrier
  rightMap : middle.carrier → right.carrier
  exactness : Prop
  splitting : right.carrier → middle.carrier
  splitCondition : Prop

structure SplitExactSequenceEvidence (S : SplitExactSequencePackage) where
  exactnessClosed : S.exactness
  splitConditionClosed : S.splitCondition

def SplitExactSequenceClosed (S : SplitExactSequencePackage) : Prop :=
  S.exactness ∧ S.splitCondition

theorem split_exact_sequence_closed_from_evidence (S : SplitExactSequencePackage) (E : SplitExactSequenceEvidence S) :
    SplitExactSequenceClosed S := by
  exact And.intro E.exactnessClosed E.splitConditionClosed

end DirectSumsDirectProductsAbelianLemmaCanonicalLaneLean
end HautevilleHouse