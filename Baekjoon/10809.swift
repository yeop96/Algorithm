
var alphabet = [Character : Int]()
var a = Int(Character("a").asciiValue!)
var z = Int(Character("z").asciiValue!)

for i in a...z{
    alphabet[Character(UnicodeScalar(i)!)] = -1
}

let words = readLine()!
var index = 0

for j in words{
    if alphabet.keys.contains(j){
        if alphabet[j] == -1{
            alphabet[j] = index
        }
    }
    index += 1
}
for k in alphabet.keys.sorted(){
    print(alphabet[k]!, terminator: " ")
}
