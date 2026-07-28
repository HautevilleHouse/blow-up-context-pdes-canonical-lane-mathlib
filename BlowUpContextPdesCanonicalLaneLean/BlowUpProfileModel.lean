import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlowUpContextPdesCanonicalLaneLean

structure BlowUpProfileModel where
  profileEquation : Type u
  selfSimilarSolution : Prop
  profileExistence : Prop
  asymptoticMatch : Prop

structure BlowUpProfileEvidence (P : BlowUpProfileModel) where
  profileEquationClosed : P.profileEquation = Type
  selfSimilarSolutionClosed : P.selfSimilarSolution
  profileExistenceClosed : P.profileExistence
  asymptoticMatchClosed : P.asymptoticMatch

def BlowUpProfileClosed (P : BlowUpProfileModel) : Prop :=
  P.selfSimilarSolution ∧ P.profileExistence ∧ P.asymptoticMatch

theorem blow_up_profile_closed_from_evidence (P : BlowUpProfileModel)
    (E : BlowUpProfileEvidence P) : BlowUpProfileClosed P := by
  exact And.intro E.selfSimilarSolutionClosed
    (And.intro E.profileExistenceClosed E.asymptoticMatchClosed)

end BlowUpContextPdesCanonicalLaneLean
end HautevilleHouse