using ParameterizedFunctions
g = @ode_def LorenzExample begin
  dx = σ*(y-x) #dxとあるので、xが微分されるもの。
  dy = x*(ρ-z) - y
  dz = x*y - β*z
end σ ρ β #パラメータは三つある

u0 = [1.0;4.0;5.0] #x=1,y=4,z=5を初期値とする。
tspan = (0.0,1.0) #時間は0から1まで。
p = [0.2,28.0,1] #σ ρ β を設定
@time prob = ODEProblem(g,u0,tspan,p)
sol = solve(prob)
plot(sol)
