import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlowUpContextPdesCanonicalLaneLean

structure BlowUpSetGeometry where
  blowUpSetType : Type u
  compactness : Prop
  hausdorffDimension : Nat
  localStructure : Prop

structure BlowUpSetEvidence (G : BlowUpSetGeometry) where
  compactnessClosed : G.compactness
  hausdorffDimensionClosed : G.hausdorffDimension = 3
  localStructureClosed : G.localStructure

def BlowUpSetClosed (G : BlowUpSetGeometry) : Prop :=
  G.compactness ∧ G.hausdorffDimension = 3 ∧ G.localStructure

theorem blow_up_set_closed_from_evidence (G : BlowUpSetGeometry)
    (E : BlowUpSetEvidence G) : BlowUpSetClosed G := by
  exact And.intro E.compactnessClosed
    (And.intro E.hausdorffDimensionClosed E.localStructureClosed)

end BlowUpContextPdesCanonicalLaneLean
end HautevilleHouse