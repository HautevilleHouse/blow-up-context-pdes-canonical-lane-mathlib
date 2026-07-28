import canonicalLaneMathlib.AdmissibleClass

/-!
# Rescaled Flow Package
-/

namespace HautevilleHouse
namespace BlowUpContextPdesCanonicalLaneLean

structure RescaledFlowPackage where
  rescalingParameter : Type u
  rescaledSolution : Type v
  blowUpTime : Prop
  convergenceToProfile : Prop
  selfSimilarDynamics : Prop

structure RescaledFlowEvidence (R : RescaledFlowPackage) where
  rescalingParameterClosed : R.rescalingParameter
  rescaledSolutionClosed : R.rescaledSolution
  blowUpTimeClosed : R.blowUpTime
  convergenceToProfileClosed : R.convergenceToProfile
  selfSimilarDynamicsClosed : R.selfSimilarDynamics

def RescaledFlowClosed (R : RescaledFlowPackage) : Prop :=
  R.rescalingParameter ∧ R.rescaledSolution ∧ R.blowUpTime ∧ R.convergenceToProfile ∧ R.selfSimilarDynamics

theorem rescaled_flow_closed_from_evidence (R : RescaledFlowPackage) (E : RescaledFlowEvidence R) :
    RescaledFlowClosed R := by
  exact And.intro E.rescalingParameterClosed (And.intro E.rescaledSolutionClosed (And.intro E.blowUpTimeClosed (And.intro E.convergenceToProfileClosed E.selfSimilarDynamicsClosed)))

end BlowUpContextPdesCanonicalLaneLean
end HautevilleHouse
