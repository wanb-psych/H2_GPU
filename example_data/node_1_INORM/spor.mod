solarmodel 9.0.1
define node_1_INORM = inorm_node_1
matrix load phi2.gz phi2 
trait node_1_INORM
parameter     mean = 0.1460536676300218 Lower -3.118963888  Upper 3.118963888
parameter     mean                    se 0.05568926213  score -0.1565487976
parameter       sd = 0.9771684277677798 Lower 0           Upper 4.96569771424329
parameter       sd                    se 0.0208528428  score 0.0001046320226
parameter       e2 = 1             Lower 0.03        Upper 1.01      
parameter      h2r = 0             Lower -0.0001     Upper 1         
parameter     bage = -0.008534631475689291 Lower -0.5198273146666667  Upper 0.5198273146666667
parameter     bage                    se 0.01124609498  score 0.3275878411
parameter     bsex = -0.4093254759106818 Lower -7.79740972  Upper 7.79740972
parameter     bsex                    se 0.08239076584  score -0.1565509692
parameter bage*sex = -0.001094602073725714 Lower -0.5198273146666667  Upper 0.5198273146666667
parameter bage*sex                    se 0.01700342805  score 0.3275882269
parameter   bage^2 = 0.0006190493388337357 Lower -0.03465515431111111  Upper 0.03465515431111111
parameter   bage^2                    se 0.002891127055  score -4.496576711
parameter bage^2*sex = 0.004560262034589027 Lower -0.03465515431111111  Upper 0.03465515431111111
parameter bage^2*sex                    se 0.004317871114  score -4.496641396
covariate age
covariate sex
covariate age*sex
covariate age^2
covariate age^2*sex
constraint h2r = 0
constraint e2 + h2r = 1
omega = pvar*(phi2*h2r + I*e2)
# mu = \{Mean+bage*(age-28.82331512)+bsex*Female
# +<bage*sex>*(age-28.82331512)*Female+<bage^2>*(age-28.82331512)^2
# +<bage^2*sex>*(age-28.82331512)^2*Female\}
loglike set -523.640321
