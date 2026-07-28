import HautevilleHouse.BlowUpContextPdesCanonicalLaneLean.AdmissibleClass

/-!
# Blow-Up Time Characterization Package
-/

namespace HautevilleHouse
namespace BlowUpContextPdesCanonicalLaneLean

structure BlowUpTimeCharacterizationPackage where
  finiteBlowUpExists : Prop
  maximalExistenceTime : Prop
  blowUpAlternativeInfinite : Prop
  classificationComplete : Prop

structure BlowUpTimeCharacterizationEvidence (C : BlowUpTimeCharacterizationPackage) where
  finiteBlowUpExistsClosed : C.finiteBlowUpExists
  maximalExistenceTimeClosed : C.maximalExistenceTime
  blowUpAlternativeInfiniteClosed : C.blowUpAlternativeInfinite
  classificationCompleteClosed : C.classificationComplete

def BlowUpTimeCharacterizationClosed (C : BlowUpTimeCharacterizationPackage) : Prop :=
  C.finiteBlowUpExists ∧ C.maximalExistenceTime ∧ C.blowUpAlternativeInfinite ∧ C.classificationComplete

theorem blow_up_time_characterization_closed_from_evidence
    (C : BlowUpTimeCharacterizationPackage) (E : BlowUpTimeCharacterizationEvidence C) :
    BlowUpTimeCharacterizationClosed C := by
  exact And.intro E.finiteBlowUpExistsClosed
    (And.intro E.maximalExistenceTimeClosed
      (And.intro E.blowUpAlternativeInfiniteClosed E.classificationCompleteClosed))

end BlowUpContextPdesCanonicalLaneLean
end HautevilleHouse