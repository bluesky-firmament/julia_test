using Distributed
@everywhere using LinearAlgebrafunction svdi(nm,i)
    #Matrix{Float64}(I, nm, nm)はサイズnmの単位行列を作る。
    u,s,v = svd((3*i).*Matrix{Float64}(I, nm, nm)+cos(i)*ones(Float64,nm,nm))
    return s
end

nmax = 1000
nm = 100
A = [] #空の配列
@time for i=1:nmax
    s = svdi(nm,i)
    push!(A,s) #Aという配列にsを追加する。
end
println(A[6])
