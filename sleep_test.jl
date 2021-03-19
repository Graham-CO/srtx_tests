using SRTxBase, Test


f = Hz(10)
f1 = Hz(10)
b = 2

period_s(f::Hz)::Float64 = 1/f.f
period_ms(f::Hz)::Int64 = Int64(floor(1e3/f.f))
period_ns(f::Hz)::Int64 = Int64(floor(1e9/f.f))

println(period_ns(f))

t0 = time_ns()
sleep(f)
t1 = time_ns()
t = t1-t0

println(t)

@test period_ns(f) + period_ns(f)*0.001<= t 


#=
@test f isa Hz

@test "$(f *= b)" == "20.0 Hz" 
@test "$(f += b)" == "22.0 Hz"



@test "$(b *= f1)" == "20.0 Hz"
@test "$(b += f1)" == "30.0 Hz"
=#