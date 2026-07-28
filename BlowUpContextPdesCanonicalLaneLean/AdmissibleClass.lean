import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlowUpContextPdesCanonicalLaneLean

structure BlowUpAdmittedObject where
  pdeSystem : Type u
  initialData : Type v
  solution : Type w
  blowUpTime : ℝ
  blowUpBehavior : Prop
  conclusion : blowUpBehavior

structure AdmissibleClass where
  object : BlowUpAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BlowUpWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BlowUpContextPdesCanonicalLaneLean
end HautevilleHouse
