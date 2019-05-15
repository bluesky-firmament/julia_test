using DifferentialEquations


f(u,p,t) = 1.01*u
u0=1/2
tspan = (0.0,1.0)
prob = ODEProblem(f,u0,tspan) #微分がfで初期値がu0の微分方程式du/dt = f(u)を解く。
@time sol = solve(prob,Tsit5(),reltol=1e-8,abstol=1e-8) #Tsit5は解き方を指定
nt = 50
t = range(0.0, stop=1.0, length=nt) #0.0から1.0までのnt点を生成する
for i=1:nt
    exact = 0.5*exp(1.01t[i])
    error = sol(t[i]) - exact
    println("t= $(t[i]), solution: $(sol(t[i])), exact solution $exact, error:$error")
end
