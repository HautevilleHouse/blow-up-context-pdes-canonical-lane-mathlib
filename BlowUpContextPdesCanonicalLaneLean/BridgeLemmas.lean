import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlowUpContextPdesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BlowUpWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BlowUpContextPdesCanonicalLaneLean
end HautevilleHouse
