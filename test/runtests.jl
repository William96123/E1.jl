using E1
using Test
using BenchmarkTools

@testset "E1.jl" begin
    # Write your tests here.
    n = 10
    A = randn(n,n)
    B = randn(n,n)
    C = A*B
    Ctest = similar(C)
    rowmatmul!(Ctest, A, B)
    @test Ctest ≈ C
    colmatmul!(Ctest, A, B)
    @test Ctest ≈ C

end

@testset "dot versions" begin
        # Write your tests here.
        n = 10
        A = randn(n,n)
        B = randn(n,n)
        C = A*B
        Ctest = similar(C)
        rowmatmuldot!(Ctest, A, B)
        @test Ctest ≈ C
        colmatmuldot!(Ctest, A, B)
        @test Ctest ≈ C    
end