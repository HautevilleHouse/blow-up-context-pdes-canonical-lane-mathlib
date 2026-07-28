import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlowUpContextPdesCanonicalLaneLean

structure BlowUpRatePackage where
  blowUpRate : ℝ → ℝ
  selfSimilarProfile : Type u
  selfSimilarProfileTopology : TopologicalSpace selfSimilarProfile
  rateLaw : Prop
  selfSimilarExists : Prop
  rateLawDerived : rateLaw
  selfSimilarExistsDerived : selfSimilarExists

structure BlowUpRateEvidence (R : BlowUpRatePackage) where
  rateLawClosed : R.rateLaw
  selfSimilarExistsClosed : R.selfSimilarExists

def BlowUpRateClosed (R : BlowUpRatePackage) : Prop :=
  R.rateLaw ∧ R.selfSimilarExists

theorem blow_up_rate_closed_from_evidence (R : BlowUpRatePackage) (E : BlowUpRateEvidence R) :
    BlowUpRateClosed R := by
  exact And.intro E.rateLawClosed E.selfSimilarExistsClosed

end BlowUpContextPdesCanonicalLaneLean
end HautevilleHouse