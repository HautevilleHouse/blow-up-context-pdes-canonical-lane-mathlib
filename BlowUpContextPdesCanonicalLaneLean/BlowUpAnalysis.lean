import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlowUpContextPdesCanonicalLaneLean

structure BlowUpAnalysisPackage where
  blowUpTime : ℝ
  singularSet : Set ℝ
  rescalingSequence : ℕ → ℝ
  limitProfile : Type u
  limitProfileTopology : TopologicalSpace limitProfile
  blowUpAnalysisComplete : Prop
  blowUpTimeFinite : blowUpTime < ∞
  singularSetNonempty : singularSet.Nonempty
  rescalingDiverges : ∀ n, rescalingSequence n → ∞

structure BlowUpAnalysisEvidence (B : BlowUpAnalysisPackage) where
  blowUpTimeFiniteClosed : B.blowUpTimeFinite
  singularSetNonemptyClosed : B.singularSetNonempty
  rescalingDivergesClosed : B.rescalingDiverges

set_option pp.all true

def BlowUpAnalysisClosed (B : BlowUpAnalysisPackage) : Prop :=
  B.blowUpTimeFinite ∧ B.singularSetNonempty ∧ B.rescalingDiverges

theorem blow_up_analysis_closed_from_evidence (B : BlowUpAnalysisPackage) (E : BlowUpAnalysisEvidence B) :
    BlowUpAnalysisClosed B := by
  exact And.intro E.blowUpTimeFiniteClosed (And.intro E.singularSetNonemptyClosed E.rescalingDivergesClosed)

end BlowUpContextPdesCanonicalLaneLean
end HautevilleHouse