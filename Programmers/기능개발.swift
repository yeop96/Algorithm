import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var answer = [Int]() // 배포
    var result = [Int]() // 각자 걸리는 기간
    
    for (i, e) in progresses.enumerated(){
        var percent = e
        var countDay = 0
        while percent < 100{
            percent += speeds[i] // 각 개발속도 더해서 100퍼 될때까지 카운팅
            countDay += 1
        }
        result += [countDay] // 100퍼센트 개발까지 걸리는 날
    }
    
    while !result.isEmpty{ // result 빌때까지
        let firstDay = result.removeFirst() //첫 번째 배포 날 지우고 시작
        var count = 1
        
        for i in result{
            if i > firstDay{ // 첫 번째 배포 날 보다 더 걸리면 break
                break
            }
            count += 1
        }
        
        result.removeFirst(count-1) // 첫 배포날 보다 빨리 개발된거 삭제
        answer += [count] // 배포된것들 +
    }
    
    
    return answer
}
