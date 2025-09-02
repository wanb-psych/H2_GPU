solarmodel 9.0.1
define node_1_INORM = inorm_node_1
matrix load phi2.gz phi2 
trait node_1_INORM
parameter     mean = 0.1543680564795843 Lower -3.118963888  Upper 3.118963888
parameter       sd = 0.9775224221380953 Lower 0           Upper 4.96569771424329
parameter       e2 = 0.647329244110203 Lower 0.03        Upper 1         
parameter      h2r = 0.352670755889797 Lower 0           Upper 1         
parameter     bage = 0             Lower -0.5198273146666667  Upper 0.5198273146666667
parameter     bsex = -0.428332399303303 Lower -7.79740972  Upper 7.79740972
parameter bage*sex = -0.004829754693520431 Lower -0.5198273146666667  Upper 0.5198273146666667
parameter   bage^2 = 0.0004286837347627947 Lower -0.03465515431111111  Upper 0.03465515431111111
parameter bage^2*sex = 0.005313648892426826 Lower -0.03465515431111111  Upper 0.03465515431111111
covariate age
covariate suspend age
covariate sex
covariate age*sex
covariate age^2
covariate age^2*sex
constraint e2 + h2r = 1
omega = pvar*(phi2*h2r + I*e2)
# mu = \{Mean+bsex*Female+<bage*sex>*(age-28.82331512)*Female
# +<bage^2>*(age-28.82331512)^2+<bage^2*sex>*(age-28.82331512)^2*Female\}
option StandErr 0
loglike set -503.444184
