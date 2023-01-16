smpl @all
equation LSDV.ls y D_1 D_2 D_3 D_4 x
vector(5) betaD=LSDV.@coefs
scalar bd=betad(5,1)
scalar alphaD=@mean(y)-betaD(5,1)*@mean(x)
scalar mu_1D=betaD(1,1)-alphad
scalar mu_2D=betaD(2,1)-alphad
scalar mu_3D=betaD(3,1)-alphad
scalar mu_4D=betaD(4,1)-alphad
vector(6) CoefD
CoefD.fill alphad, bd, mu_1D, mu_2D, mu_3D, mu_4D
