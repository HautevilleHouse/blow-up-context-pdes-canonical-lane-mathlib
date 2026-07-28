import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlowUpContextPdesCanonicalLaneLean

structure RegularityPackage where
  localWellPosedness : Prop
  smoothingEffect : Prop
  blowUpCriterion : Prop
  
structure RegularityEvidence (R : RegularityPackage) where
  localWellPosednessClosed : R.localWellPosedness
  smoothingEffectClosed : R.smoothingEffect
  blowUpCriterionClosed : R.blowUpCriterion

def RegularityClosed (R : RegularityPackage) : Prop :=
  R.localWellPosedness ∧ R.smoothingEffect ∧ R.blowUpCriterion

theorem regularity_closed_from_evidence (R : RegularityPackage) (E : RegularityEvidence R) :
    RegularityClosed R := by
  exact And.intro E.localWellPosednessClosed (And.intro E.smoothingEffectClosed E.blowUpCriterionClosed)

end BlowUpContextPdesCanonicalLaneLean
end HautevilleHouse