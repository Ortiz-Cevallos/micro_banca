smpl @all
equation LSDVT.ls y t_1 t_2 t_3 t_4 x
vector(5) betaDt=LSDVt.@coefs
scalar bdt=betadt(5,1)
scalar alphaDt=@mean(y)-betaDt(5,1)*@mean(x)
scalar landa_1t=betaDt(1,1)-alphadt
scalar landa_2t=betaDt(2,1)-alphadt
scalar landa_3t=betaDt(3,1)-alphadt
scalar landa_4t=betaDt(4,1)-alphadt
vector(6) CoefDt
CoefDt.fill alphadt, bdt, landa_1t, landa_2t, landa_3t, landa_4t
