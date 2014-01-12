%# Code to solve Shrodinger's equation

%# Compute square of distances dr to center point in cell
dr2= sum((ones(prod(S),1)*sum(R,2)'/2-r).^2,2);

%# Compute harmonic oscillator potential of frequency omega
omega=2;
V=2*omega*dr2;

%#compute dual representation of potential
gbl_Vdual=cJdag(O(cJ(V)));

%# Finite difference test
Ns=4; %# Number of states
randn("seed",0.2004);
W=(randn(prod(S),Ns)+i*randn(prod(S),Ns));
more off; %# View output as it is computed
fdtest(W);

W=W*sqrtm(inv(W'*O(W)));

%sd(W,250);