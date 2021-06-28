let str = readLine()! // "A" -> String
let ch = Character(str) // "A" -> Character
let ascii = ch.asciiValue! // 아스키값 -> Uint8
let answer = Int(ascii) // Uint8 -> Int

print(answer)
