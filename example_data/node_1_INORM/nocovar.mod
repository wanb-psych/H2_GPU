solarmodel 9.0.1
define node_1_INORM = inorm_node_1
matrix load phi2.gz phi2 
trait node_1_INORM
parameter     mean = 0.0002561534692676401 Lower -3.118963888  Upper 3.118963888
parameter     mean                    se 0.03462412317  score -3.852251766e-07
parameter       sd = 0.9936177370344982 Lower 0           Upper 4.96569771424329
parameter       sd                    se 0.02204226713  score -4.942520834e-07
parameter       e2 = 0.6477603930769944 Lower 0.03        Upper 1         
parameter       e2                    se 0.05670626961  score -2.983548829e-07
parameter      h2r = 0.3522396069230058 Lower 0           Upper 1         
parameter      h2r                    se 0.05670626961  score -1.484396834e-07
parameter     bage = 0             Lower -0.5198273146666667  Upper 0.5198273146666667
parameter     bsex = 0             Lower -7.79740972  Upper 7.79740972
parameter bage*sex = 0             Lower -0.5198273146666667  Upper 0.5198273146666667
parameter   bage^2 = 0             Lower -0.03465515431111111  Upper 0.03465515431111111
parameter bage^2*sex = 0             Lower -0.03465515431111111  Upper 0.03465515431111111
covariate age
covariate suspend age
covariate sex
covariate suspend sex
covariate age*sex
covariate suspend age*sex
covariate age^2
covariate suspend age^2
covariate age^2*sex
covariate suspend age^2*sex
constraint e2 + h2r = 1
omega = pvar*(phi2*h2r + I*e2)
# mu = \{Mean\}
loglike set -521.426610
