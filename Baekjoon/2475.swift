let line = readLine()!

let nums = line.split(separator: " ").map{Int($0)!}

var answer = 0

for i in nums{
    answer += i*i
}

print(answer%10)
