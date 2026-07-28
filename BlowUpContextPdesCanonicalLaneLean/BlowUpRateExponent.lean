import HautevilleHouse.BlowUpContextPdesCanonicalLaneLean.AdmissibleClass

/-!
# Blow-Up Rate Exponent Package
-/

namespace HautevilleHouse
namespace BlowUpContextPdesCanonicalLaneLean

structure BlowUpRateExponentPackage where
  typeIEstimate : Prop
  typeIIEstimate : Prop
  exponentClassification : Prop
  rateComplete : Prop

structure BlowUpRateExponentEvidence (E : BlowUpRateExponentPackage) where
  typeIEstimateClosed : E.typeIEstimate
  typeIIEstimateClosed : E.typeIIEstimate
  exponentClassificationClosed : E.exponentClassification
  rateCompleteClosed : E.rateComplete

def BlowUpRateExponentClosed (E : BlowUpRateExponentPackage) : Prop :=
  E.typeIEstimate ∧ E.typeIIEstimate ∧ E.exponentClassification ∧ E.rateComplete

theorem blow_up_rate_exponent_closed_from_evidence
    (E : BlowUpRateExponentPackage) (Ev : BlowUpRateExponentEvidence E) :
    BlowUpRateExponentClosed E := by
  exact And.intro Ev.typeIEstimateClosed
    (And.intro Ev.typeIIEstimateClosed
      (And.intro Ev.exponentClassificationClosed Ev.rateCompleteClosed))

end BlowUpContextPdesCanonicalLaneLean
end HautevilleHouse