using SRTxBase, Test, SafeTestsets

@time @safetestset "Frequences" begin include("sleep_test.jl") end
