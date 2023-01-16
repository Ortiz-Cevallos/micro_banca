'Ejercicio rutina Within Efecto fijo temporales.

'Paso 1: Premultiplicar Q_mu y M:mu sobre MY y MX 
matrix Qy_landa=q_landa*My
matrix Qx_landa=q_landa*Mx
matrix My_landa=M_landa*My
matrix Mx_landa=M_landa*Mx
'paso 2 convertir matriz a series
series Yt1
series Xt1
series Yt2
series Xt2
mtos(qy_landa, yt1)
mtos(qx_landa, xt1)
mtos(my_landa, yt2)
mtos(mx_landa, xt2)
'Hacer regresión
equation eqt1.ls yt1 xt1
'Deducir coeficientes
scalar betat=eqt1.@coefs
scalar alphat=@mean(y)-betat*@mean(x)
scalar landa_1=yt2(1,1)-alphat-betat*xt2(1,1)
scalar landa_2=yt2(2,1)-alphat-betat*xt2(2,1)
scalar landa_3=yt2(3,1)-alphat-betat*xt2(3,1)
scalar landa_4=yt2(4,1)-alphat-betat*xt2(4,1)
vector(6) Coeft
Coeft.fill alphat, betat, landa_1, landa_2, landa_3, landa_4
