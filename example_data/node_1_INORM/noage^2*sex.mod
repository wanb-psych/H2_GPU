solarmodel 9.0.1
define node_1_INORM = inorm_node_1
matrix load phi2.gz phi2 
trait node_1_INORM
parameter     mean = 0.1245980345635727 Lower -3.118963888  Upper 3.118963888
parameter       sd = 0.9777548754470172 Lower 0           Upper 4.96569771424329
parameter       e2 = 0.6485675486305019 Lower 0.03        Upper 1         
parameter      h2r = 0.3514324513694981 Lower 0           Upper 1         
parameter     bage = -0.009187654956402676 Lower -0.5198273146666667  Upper 0.5198273146666667
parameter     bsex = -0.3614103512553845 Lower -7.79740972  Upper 7.79740972
parameter bage*sex = 0.0006375184256212416 Lower -0.5198273146666667  Upper 0.5198273146666667
parameter   bage^2 = 0.002964074731100417 Lower -0.03465515431111111  Upper 0.03465515431111111
parameter bage^2*sex = 0             Lower -0.03465515431111111  Upper 0.03465515431111111
covariate age
covariate sex
covariate age*sex
covariate age^2
covariate age^2*sex
covariate suspend age^2*sex
constraint e2 + h2r = 1
omega = pvar*(phi2*h2r + I*e2)
# mu = \{Mean+bage*(age-28.82331512)+bsex*Female
# +<bage*sex>*(age-28.82331512)*Female+<bage^2>*(age-28.82331512)^2\}
option StandErr 0
loglike set -503.850471
