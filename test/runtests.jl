using Penopt
using LinearAlgebra: norm
using Test

f(x) = norm(x).^2
c(x) = x - 20 * ones(length(x))
@testset "Penopt.jl" begin  
    xopt,fxopt = penopt(f,c,ones(2),[0 1 2 4 8 16 32 64])
    @test  xopt ≈ [0,0] atol = 0.0001
    @test fxopt ≈ 0.0   atol = 0.001
end
