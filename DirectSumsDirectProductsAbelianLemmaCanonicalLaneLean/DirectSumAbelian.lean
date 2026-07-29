import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianLemmaCanonicalLaneLean

structure DirectSumAbelianPackage where
  indexSet : Type u
  componentType : Type v
  abelianComponents : indexSet → Prop
  directSumDefined : Prop
  biproductExists : Prop
  universalPropertyHom : Prop

structure DirectSumAbelianEvidence (P : DirectSumAbelianPackage) where
  abelianComponentsClosed : P.abelianComponents P.indexSet
  directSumDefinedClosed : P.directSumDefined
  biproductExistsClosed : P.biproductExists
  universalPropertyHomClosed : P.universalPropertyHom

def DirectSumAbelianClosed (P : DirectSumAbelianPackage) : Prop :=
  P.directSumDefined ∧ P.biproductExists ∧ P.universalPropertyHom

theorem direct_sum_abelian_closed_from_evidence (P : DirectSumAbelianPackage)
    (E : DirectSumAbelianEvidence P) : DirectSumAbelianClosed P := by
  exact And.intro E.directSumDefinedClosed
    (And.intro E.biproductExistsClosed E.universalPropertyHomClosed)

end DirectSumsDirectProductsAbelianLemmaCanonicalLaneLean
end HautevilleHouse
