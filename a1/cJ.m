% Forward transform (acting on 3d data sets)
%
% Usage: out=cI(in)
%
% in: input 3d data set
% out: output 3d data set
%

function out=cJ(in)
  global gbl_S; %# Must declare all globals with such statements to access them
  %# Operator definition (multiplication by volume)
  out= fft3(in,gbl_S,-1)/(gbl_S(1)*gbl_S(2)*gbl_S(3)); %# <=== YOUR CODE HERE
endfunction
