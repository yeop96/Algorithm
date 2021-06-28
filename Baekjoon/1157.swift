let line = readLine()!.uppercased()
var dic = [Character : Int]() //딕셔너리
for i in line{
    if dic[i] == nil {
        dic[i] = 1
    }
    else {
        dic[i]? += 1
    }
}

var result = [Character]()
for key in dic.keys {
  if dic[key] == dic.values.max()! {
    result.append(key)
  }
}
print(result.count > 1 ? "?" : "\(result[0])")
