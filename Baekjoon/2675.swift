
let num = Int(readLine()!)!

for _ in 1...num{
    let line = readLine()!.split(separator: " ")
    
    line[1].forEach{
        for _ in 1...Int(line[0])!{
            print($0, terminator:"")
        }
    }
    print()
}
