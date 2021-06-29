
var nums = 1

for _ in 1...3{
    let num = Int(readLine()!)!
    nums *= num
}

var numb = [Int](repeating: 0, count: 10)

for i in String(nums){
    numb[Int(String(i))!] += 1
}

numb.forEach {
    print($0)
}
