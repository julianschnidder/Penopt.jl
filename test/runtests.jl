using Penopt
using LinearAlgebra
f(x)=norm(x).^2
c(x)=x-20*ones(length(x))
penopt(f,c,ones(2),[0 1 2 4 8 16 32 64])
