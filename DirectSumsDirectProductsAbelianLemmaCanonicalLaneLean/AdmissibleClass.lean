import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : DirectSumProductAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

structure DirectSumProductAdmittedObject where
  abelianCategory : Type u
  directSumExists : Prop
  directProductExists : Prop
  biproductEquivalence : Prop
  conclusion : directSumExists ∧ directProductExists ∧ biproductEquivalence

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.directSumExists ∧ A.object.directProductExists ∧ A.object.biproductEquivalence) ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end DirectSumsDirectProductsAbelianLemmaCanonicalLaneLean
end HautevilleHouse
