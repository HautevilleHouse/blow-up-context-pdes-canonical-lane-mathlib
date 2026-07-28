import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlowUpContextPdesCanonicalLaneLean

structure TypeIBlowUpPackage where
  typeICondition : Prop
  blowUpRateBound : Prop
  parabolicScaling : Prop
  classificationResult : Prop

structure TypeIBlowUpEvidence (T : TypeIBlowUpPackage) where
  typeIConditionClosed : T.typeICondition
  blowUpRateBoundClosed : T.blowUpRateBound
  parabolicScalingClosed : T.parabolicScaling
  classificationResultClosed : T.classificationResult

def TypeIBlowUpClosed (T : TypeIBlowUpPackage) : Prop :=
  T.typeICondition ∧ T.blowUpRateBound ∧ T.parabolicScaling ∧ T.classificationResult

theorem type_i_blow_up_closed_from_evidence (T : TypeIBlowUpPackage) 
  (E : TypeIBlowUpEvidence T) : TypeIBlowUpClosed T := by
  exact And.intro E.typeIConditionClosed 
    (And.intro E.blowUpRateBoundClosed 
      (And.intro E.parabolicScalingClosed E.classificationResultClosed))

end BlowUpContextPdesCanonicalLaneLean
end HautevilleHouse
