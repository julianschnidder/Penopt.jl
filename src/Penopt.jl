module Penopt
using Optim

export penopt

function penopt(f, c, x_0, Λ=vcat([0], [2 .^k for k in 0:10]); p=2)
    x = x_0
    fx=0.0
    for λ ∈ Λ
        xopt = optimize(arg -> f(arg) + λ*posnorm(c(arg)).^p, x
            , NelderMead())
            # , BFGS())
            # , ConjugateGradient(), Optim.Options())
        x=xopt.minimizer
        fx=xopt.minimum
        # println("f(",x,")=", fx, ", λ=", λ);
    end
    x,fx
end

function posnorm(cx)
    cxp = filter(arg -> arg > 0, cx)
    norm(cxp)
end

end
