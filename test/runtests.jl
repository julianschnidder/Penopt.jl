using Penopt
f(x)=norm(x).^2
c(x)=x-20*ones(length(x))
@enter penopt(f,c,ones(2),[01 2 4 8 16 32 64])
