let num = Double(readLine()!)!
let scores = readLine()!.split(separator: " ").map{Double($0)!}

let max = scores.max()!

let modifiedScores = scores.map{($0/max)*100}.reduce(0, {$0 + $1})

print(modifiedScores/num)
