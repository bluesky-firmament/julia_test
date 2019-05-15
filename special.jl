using SpecialFunctions
z = 0.2
a = besselj0(z) #ν=0のベッセル関数
println(a)
z = 0.1
for ν=0:10 #J_{ν}(z=0.1)の値
    Jν = besselj(ν,z)
    println("J_{$ν}(0.1) = $Jν")
end

using FunctionZeros
n=10
for ν=0:10 #J_{ν}(x)のn=10番目のゼロ点の位置
    Jν_zero = besselj_zero(ν, n)
    println("J_{$ν}の$n 番目のゼロ点の位置は $Jν_zero")
end
