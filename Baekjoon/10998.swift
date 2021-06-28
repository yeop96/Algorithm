let line = readLine()!

let answer = line.split(separator: " ").map{Int($0)!}.reduce(1){$0*$1}

print(answer)
