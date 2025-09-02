solarmodel 9.0.1
define node_1_INORM = inorm_node_1
matrix load phi2.gz phi2 
trait node_1_INORM
parameter     mean = -0.04176752609050637 Lower -3.118963888  Upper 3.118963888
parameter       sd = 0.9883691464946908 Lower 0           Upper 4.96569771424329
parameter       e2 = 0.647009736166302 Lower 0.03        Upper 1         
parameter      h2r = 0.352990263833698 Lower 0           Upper 1         
parameter     bage = -0.00677097331879723 Lower -0.5198273146666667  Upper 0.5198273146666667
parameter     bsex = 0             Lower -7.79740972  Upper 7.79740972
parameter bage*sex = -0.001408037570686682 Lower -0.5198273146666667  Upper 0.5198273146666667
parameter   bage^2 = 0.007657962528525099 Lower -0.03465515431111111  Upper 0.03465515431111111
parameter bage^2*sex = -0.01013998193752545 Lower -0.03465515431111111  Upper 0.03465515431111111
covariate age
covariate sex
covariate suspend sex
covariate age*sex
covariate age^2
covariate age^2*sex
constraint e2 + h2r = 1
omega = pvar*(phi2*h2r + I*e2)
# mu = \{Mean+bage*(age-28.82331512)+<bage*sex>*(age-28.82331512)*Female
# +<bage^2>*(age-28.82331512)^2+<bage^2*sex>*(age-28.82331512)^2*Female\}
option StandErr 0
loglike set -515.523085
