function daikei(f,N)
    dk = 2π / (N-1)
    fsum = 0
    for i in 1:N
        k = (i-1)*dk - pi
        fsum += f(k)
    end
    fsum /= N
    return fsum
end

f(x) = sin(x) + x^2
N = 400
fsum = daikei(f,N)
exact = ((pi)^3/3 - (-pi)^3/3)/(2*pi)
println("daikei $fsum, exact $exact")
using QuadGK
f(x) = sin(x) + x^2
fsum2 = quadgk(f,-π,π)./(2π)
println("quadgk $fsum2, exact $exact")

using Dierckx
x = [0., 1., 2., 3., 4.]
y = [-1., 0., 7., 26., 63.]  # x.^3 - 1.
spl = Spline1D(x, y)
println(spl)
