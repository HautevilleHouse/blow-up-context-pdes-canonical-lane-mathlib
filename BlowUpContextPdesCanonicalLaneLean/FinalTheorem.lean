import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BlowUpContextPdesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BlowUpContextPdesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BlowUpWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedBlowUpClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_blow_up_endgame (A : AdmissibleClass) :
    ConstrainedBlowUpClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BlowUpContextPdesCanonicalLaneLean
end HautevilleHouse
