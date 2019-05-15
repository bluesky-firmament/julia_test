function test(inputdata)
    numofdata = countlines(inputdata) #ファイルの中のデータの数をカウント。ここでは3
    data = readlines(inputdata) #データファイルの読み込み。配列として確保される。
    data_int = [] #空の配列
    data_float = [] #空の配列
    data_string = [] #空の配列
    for inum = 1:numofdata
        u = split(data[inum]) #i番目のデータ。
        println(u) #この状態ではstringになっている。
        di = parse(Int64,u[1]) #整数の読み込み。parseは指定した型に変換する。
        df = parse.(Float64,u[2:3]) #実数二つ読み込み。parse.と.をつけたことでそれぞれにparseを適用。
        ds = u[end] #最後の文字列の読み込み。endは配列の最後を意味する。
        push!(data_int,di) #データの追加
        push!(data_float,df) #データの追加
        push!(data_string,ds) #データの追加
    end
    println(data_int)
    println(data_float)
    println(data_string)
    return data_int,data_float,data_string
end
inputdata = "test.dat"
test(inputdata)
