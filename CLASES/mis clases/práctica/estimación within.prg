'Ejercicio rutina Within Efecto fijo transversales.

'Paso 1: Premultiplicar Q_mu y M:mu sobre MY y MX 
matrix Qy_mu=q_mu*My
matrix Qx_mu=q_mu*Mx
matrix My_mu=M_mu*My
matrix Mx_mu=M_mu*Mx
'paso 2 convertir matriz a series
series Y1
series X1
series Y2
series X2
mtos(qy_mu, y1)
mtos(qx_mu, x1)
mtos(my_mu, y2)
mtos(mx_mu, x2)
'Hacer regresión
equation eq1.ls y1 x1
'Deducir coeficientes
scalar beta=eq1.@coefs
scalar alpha=@mean(y)-beta*@mean(x)
scalar mu_1=y2(1,1)-alpha-beta*x2(1,1)
scalar mu_2=y2(5,1)-alpha-beta*x2(5,1)
scalar mu_3=y2(9,1)-alpha-beta*x2(9,1)
scalar mu_4=y2(13,1)-alpha-beta*x2(13,1)
vector(6) Coef
Coef.fill alpha, beta, mu_1, mu_2, mu_3, mu_4

vector(2) betas
