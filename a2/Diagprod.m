% out=diag(a)*B
%

function out=Diagprod(a,B)
  out=(a*ones(1,size(B,2))).*B;
endfunction
