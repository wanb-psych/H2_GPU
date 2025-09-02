solarmodel 9.0.1
define node_1_INORM = inorm_node_1
matrix load phi2.gz phi2 
trait node_1_INORM
parameter     mean = 0.1653862310104373 Lower -3.118963888  Upper 3.118963888
parameter       sd = 0.9772939137389667 Lower 0           Upper 4.96569771424329
parameter       e2 = 0.6475298511181971 Lower 0.03        Upper 1         
parameter      h2r = 0.3524701488818029 Lower 0           Upper 1         
parameter     bage = -0.007998041162654826 Lower -0.5198273146666667  Upper 0.5198273146666667
parameter     bsex = -0.4390320017351971 Lower -7.79740972  Upper 7.79740972
parameter bage*sex = 0.002991207500085987 Lower -0.5198273146666667  Upper 0.5198273146666667
parameter   bage^2 = 0             Lower -0.03465515431111111  Upper 0.03465515431111111
parameter bage^2*sex = 0.005762424735849346 Lower -0.03465515431111111  Upper 0.03465515431111111
covariate age
covariate sex
covariate age*sex
covariate age^2
covariate suspend age^2
covariate age^2*sex
constraint e2 + h2r = 1
omega = pvar*(phi2*h2r + I*e2)
# mu = \{Mean+bage*(age-28.82331512)+bsex*Female
# +<bage*sex>*(age-28.82331512)*Female
# +<bage^2*sex>*(age-28.82331512)^2*Female\}
option StandErr 0
loglike set -503.211044
