import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlowUpContextPdesCanonicalLaneLean

structure BlowUpProfilePackage where
  profileFunction : Type u
  profileEquation : Prop
  stabilityUnderPerturbation : Prop
  profileUniqueness : Prop

structure BlowUpProfileEvidence (P : BlowUpProfilePackage) where
  profileEquationClosed : P.profileEquation
  stabilityUnderPerturbationClosed : P.stabilityUnderPerturbation
  profileUniquenessClosed : P.profileUniqueness

def BlowUpProfileClosed (P : BlowUpProfilePackage) : Prop :=
  P.profileEquation ∧ P.stabilityUnderPerturbation ∧ P.profileUniqueness

theorem blow_up_profile_closed_from_evidence (P : BlowUpProfilePackage) 
  (E : BlowUpProfileEvidence P) : BlowUpProfileClosed P := by
  exact And.intro E.profileEquationClosed 
    (And.intro E.stabilityUnderPerturbationClosed E.profileUniquenessClosed)

end BlowUpContextPdesCanonicalLaneLean
end HautevilleHouse
