import HautevilleHouse.BlowUpContextPdesCanonicalLaneLean.AdmissibleClass

/-!
# Regularity Before Blow-Up Package
-/

namespace HautevilleHouse
namespace BlowUpContextPdesCanonicalLaneLean

structure RegularityBeforeBlowUpPackage where
  smoothUpToBlowUp : Prop
  derivativeEstimates : Prop
  blowUpRateIndependent : Prop
  regularityComplete : Prop

structure RegularityBeforeBlowUpEvidence (R : RegularityBeforeBlowUpPackage) where
  smoothUpToBlowUpClosed : R.smoothUpToBlowUp
  derivativeEstimatesClosed : R.derivativeEstimates
  blowUpRateIndependentClosed : R.blowUpRateIndependent
  regularityCompleteClosed : R.regularityComplete

def RegularityBeforeBlowUpClosed (R : RegularityBeforeBlowUpPackage) : Prop :=
  R.smoothUpToBlowUp ∧ R.derivativeEstimates ∧ R.blowUpRateIndependent ∧ R.regularityComplete

theorem regularity_before_blow_up_closed_from_evidence
    (R : RegularityBeforeBlowUpPackage) (E : RegularityBeforeBlowUpEvidence R) :
    RegularityBeforeBlowUpClosed R := by
  exact And.intro E.smoothUpToBlowUpClosed
    (And.intro E.derivativeEstimatesClosed
      (And.intro E.blowUpRateIndependentClosed E.regularityCompleteClosed))

end BlowUpContextPdesCanonicalLaneLean
end HautevilleHouse