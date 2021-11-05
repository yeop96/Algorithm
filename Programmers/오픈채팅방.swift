func solution(_ record:[String]) -> [String] {
    
    let input =  record.map{$0.split(separator: " ")}// 문자열 이쁘게 잘라 놓기
    let inOut = input.filter{$0[0] == "Enter" || $0[0] == "Leave"} // 인아웃만
    let changeName = input.filter{$0[0] == "Enter" || $0[0] == "Change"} // 이름 바뀔 수 있는 경우
    var name = [String : String]() // 아이디 닉네임
    var answer = [String]()
    
    
    changeName.forEach{
        name[String($0[1])] = String($0[2])
    }
    
    inOut.forEach{ // 인아웃 써있는애들만 문자열에 넣어줌
        var str = ""
        str += name[String($0[1])]! + "님이 "
        str += String($0[0]) == "Enter" ? "들어왔습니다." : "나갔습니다."
        answer += [str]
    }

    return answer
}
