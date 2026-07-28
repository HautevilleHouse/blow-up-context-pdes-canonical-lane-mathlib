import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlowUpContextPdesCanonicalLaneLean

structure BlowUpAnalysisPackage where
  pdeType : Type u
  solutionSpace : Type v
  blowUpTimeExists : Prop
  maximalExistenceInterval : Prop
  blowUpCondition : Prop

structure BlowUpAnalysisEvidence (B : BlowUpAnalysisPackage) where
  blowUpTimeExistsClosed : B.blowUpTimeExists
  maximalExistenceIntervalClosed : B.maximalExistenceInterval
  blowUpConditionClosed : B.blowUpCondition

def BlowUpAnalysisClosed (B : BlowUpAnalysisPackage) : Prop :=
  B.blowUpTimeExists ∧ B.maximalExistenceInterval ∧ B.blowUpCondition

theorem blow_up_analysis_closed_from_evidence (B : BlowUpAnalysisPackage)
    (E : BlowUpAnalysisEvidence B) : BlowUpAnalysisClosed B := by
  exact And.intro E.blowUpTimeExistsClosed
    (And.intro E.maximalExistenceIntervalClosed E.blowUpConditionClosed)

end BlowUpContextPdesCanonicalLaneLean
end HautevilleHouse