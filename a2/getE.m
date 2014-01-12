% 
%
% Usage: out=getE(in)
%
% in: W, expansion coefficients for Ns unconstrained wavefunctions
% out: output 3d data set
%

function out=getE(in)
  global gbl_Vdual; %# Must declare all globals with such statements to access them
  indag=in';
  Uinv=inv(indag*O(in));
  nn=diagouter((cI(in*Uinv)),cI(in));
  Vtild=cJdag(O(cJ(gbl_Vdual)));
  %out= -0.5*sum(diagouter(indag,(L(in*Uinv))'))+Vtild'*nn;
  %out= real(-0.5*trace(indag*L(in*Uinv))+Vtild'*nn);
  out= Vtild'*nn;
  %clear indag,Uinv,nn,Vtild;
endfunction
