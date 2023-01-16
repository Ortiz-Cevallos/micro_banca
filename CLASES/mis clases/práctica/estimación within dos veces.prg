'Ejercicio rutina Within Efecto TWO WAYS

'Paso 1: Premultiplicar Q_mu y M:mu sobre MY y MX 
matrix Qy=Q_MU*Q_LANDA*My
matrix Qx=Q_MU*Q_LANDA*Mx
'paso 2 convertir matriz a series
series YQ
series XQ
mtos(qy, YQ)
mtos(qx, XQ)
'Hacer regresión
equation Q.ls YQ XQ
'Deducir coeficientes
scalar betaQ=Q.@coefs
scalar alphaQ=@mean(y)-betaQ*@mean(x)
vector(6) CoefQ
CoefQ.fill alphaQ, betaQ



