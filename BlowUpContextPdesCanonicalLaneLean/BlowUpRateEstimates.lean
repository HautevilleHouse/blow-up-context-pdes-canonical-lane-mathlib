import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlowUpContextPdesCanonicalLaneLean

structure BlowUpRateEstimates where
  lowerBlowUpRate : ℝ
  upperBlowUpRate : ℝ
  rateBound : Prop
  optimality : Prop

structure BlowUpRateEvidence (R : BlowUpRateEstimates) where
  lowerRateClosed : R.lowerBlowUpRate = 1/2
  upperRateClosed : R.upperBlowUpRate = 1
  rateBoundClosed : R.rateBound
  optimalityClosed : R.optimality

def BlowUpRateClosed (R : BlowUpRateEstimates) : Prop :=
  R.lowerBlowUpRate = 1/2 ∧ R.upperBlowUpRate = 1 ∧ R.rateBound ∧ R.optimality

theorem blow_up_rate_closed_from_evidence (R : BlowUpRateEstimates)
    (E : BlowUpRateEvidence R) : BlowUpRateClosed R := by
  exact And.intro E.lowerRateClosed
    (And.intro E.upperRateClosed
      (And.intro E.rateBoundClosed E.optimalityClosed))

end BlowUpContextPdesCanonicalLaneLean
end HautevilleHouse