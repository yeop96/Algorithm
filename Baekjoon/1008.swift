let line = readLine()!

let answer = line.split(separator: " ").map{Double($0)!}

print(answer[0]/answer[1])
