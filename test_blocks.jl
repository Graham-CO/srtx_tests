import Pkg
Pkg.add("SRTxBase")

using SRTxBase, Test




b1 = BlockCore(:b1, Hz(10))

@test :b1 == nameof(b1)
@test Hz(10) == freq(b1)

@test false == isactive(b1)

spawn!(b1)
@test true == isactive(b1)

kill!(b1)
@test false == isactive(b1)