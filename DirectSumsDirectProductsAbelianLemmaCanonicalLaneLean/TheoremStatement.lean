import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianLemmaCanonicalLaneLean

structure TheoremStatement where
  object : AdmittedObject
  statementFormulated : Prop
  directSumDirectProductAbelianLemma : Prop
  statementFormulatedTerm : statementFormulated
  directSumDirectProductAbelianLemmaTerm : directSumDirectProductAbelianLemma

structure AdmittedObject where
  objectType : Type u
  objectStructure : Prop
  conclusion : objectStructure

end DirectSumsDirectProductsAbelianLemmaCanonicalLaneLean
end HautevilleHouse
