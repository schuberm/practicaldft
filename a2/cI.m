% Forward transform (acting on 3d data sets)
%
% Usage: out=cI(in)
%
% in: input 3d data set
% out: output 3d data set
%

function out=cI(in)
  global gbl_S; %# Must declare all globals with such statements to access them
  %# Operator definition (multiplication by volume)
  out=zeros(size(in));
  for col=1:size(in,2)
    out(:,col)= fft3(in(:,col),gbl_S,1); %# <=== YOUR CODE HERE
  end
endfunction
