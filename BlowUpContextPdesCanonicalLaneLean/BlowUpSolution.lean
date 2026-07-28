import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlowUpContextPdesCanonicalLaneLean

structure BlowUpSolutionPackage where
  solutionExists : Prop
  blowUpTimeFinite : Prop
  singularityFormation : Prop
  solutionRegular : Prop

structure BlowUpSolutionEvidence (P : BlowUpSolutionPackage) where
  solutionExistsClosed : P.solutionExists
  blowUpTimeFiniteClosed : P.blowUpTimeFinite
  singularityFormationClosed : P.singularityFormation
  solutionRegularClosed : P.solutionRegular

def BlowUpSolutionClosed (P : BlowUpSolutionPackage) : Prop :=
  P.solutionExists ∧ P.blowUpTimeFinite ∧ P.singularityFormation ∧ P.solutionRegular

theorem blow_up_solution_closed_from_evidence (P : BlowUpSolutionPackage) 
  (E : BlowUpSolutionEvidence P) : BlowUpSolutionClosed P := by
  exact And.intro E.solutionExistsClosed 
    (And.intro E.blowUpTimeFiniteClosed 
      (And.intro E.singularityFormationClosed E.solutionRegularClosed))

end BlowUpContextPdesCanonicalLaneLean
end HautevilleHouse
