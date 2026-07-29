import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectSumsDirectProductsAbelianLemmaCanonicalLaneLean

structure DirectProductAbelianPackage where
  indexSet : Type u
  componentType : Type v
  abelianComponents : indexSet → Prop
  directProductDefined : Prop
  productExists : Prop
  universalPropertyHom : Prop

structure DirectProductAbelianEvidence (P : DirectProductAbelianPackage) where
  abelianComponentsClosed : P.abelianComponents P.indexSet
  directProductDefinedClosed : P.directProductDefined
  productExistsClosed : P.productExists
  universalPropertyHomClosed : P.universalPropertyHom

def DirectProductAbelianClosed (P : DirectProductAbelianPackage) : Prop :=
  P.directProductDefined ∧ P.productExists ∧ P.universalPropertyHom

theorem direct_product_abelian_closed_from_evidence (P : DirectProductAbelianPackage)
    (E : DirectProductAbelianEvidence P) : DirectProductAbelianClosed P := by
  exact And.intro E.directProductDefinedClosed
    (And.intro E.productExistsClosed E.universalPropertyHomClosed)

end DirectSumsDirectProductsAbelianLemmaCanonicalLaneLean
end HautevilleHouse
