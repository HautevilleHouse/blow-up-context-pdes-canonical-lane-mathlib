import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlowUpContextPdesCanonicalLaneLean

structure BlowUpModelPackage where
  energyEstimates : Prop
  energyEstimatesTerm : energyEstimates
  concentrationCompactness : Prop
  concentrationCompactnessTerm : concentrationCompactness
  profileDecomposition : Prop
  profileDecompositionTerm : profileDecomposition
  
structure BlowUpModelEvidence (B : BlowUpModelPackage) where
  energyEstimatesClosed : B.energyEstimates
  concentrationCompactnessClosed : B.concentrationCompactness
  profileDecompositionClosed : B.profileDecomposition

def BlowUpModelClosed (B : BlowUpModelPackage) : Prop :=
  B.energyEstimates ∧ B.concentrationCompactness ∧ B.profileDecomposition

theorem blowUpModel_closed_from_evidence (B : BlowUpModelPackage) (E : BlowUpModelEvidence B) :
    BlowUpModelClosed B := by
  exact And.intro E.energyEstimatesClosed (And.intro E.concentrationCompactnessClosed E.profileDecompositionClosed)

end BlowUpContextPdesCanonicalLaneLean
end HautevilleHouse