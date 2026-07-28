import canonicalLaneMathlib.AdmissibleClass
import BlowUpContextPdesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BlowUpContextPdesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  (∃ (h : A.object.initialDataRegular) (c : A.object.criticalExponent), A.endpointSpec h c)

theorem bridge_from_admissible_class (A : AdmissibleClass) (h : A.object.initialDataRegular) (c : A.object.criticalExponent) :
    bridgeClosed A := by
  exact Exists.intro h (Exists.intro c A.endpointSpec)

end BlowUpContextPdesCanonicalLaneLean
end HautevilleHouse