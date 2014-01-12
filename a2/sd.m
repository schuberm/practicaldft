% Steepest descent
%
% Usage: out=sd(in,Nit)
%
% in: W, expansion coefficients for Ns unconstrained wavefunctions
% out: output 3d data set

function out=sd(in,Nit)
  alpha=3E-5;
  old=in;
  for iter=1:1:Nit
    out=old-getgrad(old);
    fprintf('Energy: %20.16f\n',getE(out));
    old=out;
  end
endfunction
