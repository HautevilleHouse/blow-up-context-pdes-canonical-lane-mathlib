import canonicalLaneMathlib.AdmissibleClass

/-!
# BlowUp Admitted Object
-/

namespace HautevilleHouse
namespace BlowUpContextPdesCanonicalLaneLean

structure BlowUpSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BlowUpAdmittedObject where
  space : BlowUpSpace
  blowUpPde : Prop
  finiteTimeSingularity : Prop
  profileModel : Type
  profileTopology : TopologicalSpace profileModel
  blowUpProfileMatched : Prop
  conclusion : blowUpProfileMatched

structure BlowUpEndgameState where
  object : BlowUpAdmittedObject

def BlowUpWitnessClosed (O : BlowUpAdmittedObject) : Prop :=
  O.blowUpProfileMatched

end BlowUpContextPdesCanonicalLaneLean
end HautevilleHouse
