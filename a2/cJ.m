% Inverse transform (acting on 3d data sets)
%
% Usage: out=cJ(in)
%
% in: input 3d data set
% out: output 3d data set
%

function out=cJ(in)
  global gbl_S; %# Must declare all globals with such statements to access them
  for col=1:size(in,2)
    out(:,col)= fft3(in(:,col),gbl_S,-1)/(gbl_S(1)*gbl_S(2)*gbl_S(3)); %# <=== YOUR CODE HERE
  end
endfunction
