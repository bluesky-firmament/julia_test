using Optim
f(x) = (1.0 - x[1])^2 + 100.0 * (x[2] - x[1]^2)^2
x0 = [0.0, 0.0] #初期値を0,0とした。
a1 = optimize(f, x0)
xsol = Optim.minimizer(a1) #関数fを最小化するxの値
println("xsol = $xsol")
fmin = Optim.minimum(a1) #関数fの最小値
println("fmin = $fmin")

using Optim
f2(x) = 2x^2+3x+1
a2 = optimize(f2, -2.0, 1.0) #-2から1の間の最小値を探す。
xsol = Optim.minimizer(a2) #関数f2を最小化するxの値
println("xsol = $xsol")
fmin = Optim.minimum(a2) #関数f2の最小値
println("fmin = $fmin")
plot(f2)
