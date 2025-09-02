solarmodel 9.0.1
define node_1_INORM = inorm_node_1
matrix load phi2.gz phi2 
trait node_1_INORM
parameter     mean = 0.1564812211268741 Lower -3.118963888  Upper 3.118963888
parameter     mean                    se 0.06001214066  score -0.1186460026
parameter       sd = 0.977264609150346 Lower 0           Upper 4.96569771424329
parameter       sd                    se 0.02165579644  score 9.178173887e-05
parameter       e2 = 0.6475993364717239 Lower 0.03        Upper 1         
parameter       e2                    se 0.05584022187  score 0.0006479328626
parameter      h2r = 0.3524006635282762 Lower 0           Upper 1         
parameter      h2r                    se 0.05584022187  score -0.001063429808
parameter     bage = -0.008273912254257963 Lower -0.5198273146666667  Upper 0.5198273146666667
parameter     bage                    se 0.01151878016  score 0.2714566653
parameter     bsex = -0.4299308667926472 Lower -7.79740972  Upper 7.79740972
parameter     bsex                    se 0.08613109014  score -0.1360840202
parameter bage*sex = 0.003213632582597401 Lower -0.5198273146666667  Upper 0.5198273146666667
parameter bage*sex                    se 0.01720137331  score 0.2817815629
parameter   bage^2 = 0.0006567596674756965 Lower -0.03465515431111111  Upper 0.03465515431111111
parameter   bage^2                    se 0.002950945247  score -3.933232351
parameter bage^2*sex = 0.005095227177603222 Lower -0.03465515431111111  Upper 0.03465515431111111
parameter bage^2*sex                    se 0.004419971968  score -4.16256709
covariate age
covariate sex
covariate age*sex
covariate age^2
covariate age^2*sex
constraint e2 + h2r = 1
omega = pvar*(phi2*h2r + I*e2)
# mu = \{Mean+bage*(age-x_age)+bsex*Female+<bage*sex>*(age-x_age)*Female
# +<bage^2>*(age-x_age)^2+<bage^2*sex>*(age-x_age)^2*Female\}
loglike set -503.186279
