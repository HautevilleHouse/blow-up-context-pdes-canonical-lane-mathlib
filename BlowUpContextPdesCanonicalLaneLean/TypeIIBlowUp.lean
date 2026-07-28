import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlowUpContextPdesCanonicalLaneLean

structure TypeIIBlowUpPackage where
  typeIICondition : Prop
  infiniteBlowUpRate : Prop
  nonSelfSimilar : Prop
  specialStructure : Prop

structure TypeIIBlowUpEvidence (T : TypeIIBlowUpPackage) where
  typeIIConditionClosed : T.typeIICondition
  infiniteBlowUpRateClosed : T.infiniteBlowUpRate
  nonSelfSimilarClosed : T.nonSelfSimilar
  specialStructureClosed : T.specialStructure

def TypeIIBlowUpClosed (T : TypeIIBlowUpPackage) : Prop :=
  T.typeIICondition ∧ T.infiniteBlowUpRate ∧ T.nonSelfSimilar ∧ T.specialStructure

theorem type_ii_blow_up_closed_from_evidence (T : TypeIIBlowUpPackage) 
  (E : TypeIIBlowUpEvidence T) : TypeIIBlowUpClosed T := by
  exact And.intro E.typeIIConditionClosed 
    (And.intro E.infiniteBlowUpRateClosed 
      (And.intro E.nonSelfSimilarClosed E.specialStructureClosed))

end BlowUpContextPdesCanonicalLaneLean
end HautevilleHouse
