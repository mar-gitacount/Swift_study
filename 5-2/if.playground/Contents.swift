import UIKit

var greeting = "Hello, playground"
//点数を判定する関数を書く
func hantei(score: Int) -> String {
    var result = "結果:\(score)点"
    if(80 <= score){
        result += "は合格だし凄い!"
    }else if(60 <= score){
        result += "は合格!"
    }else{
        result += "は追試.."
    }
    return result
}

let student1 = hantei(score: 10)
print(student1)
let student2 = hantei(score: 80)
print(student2)
let student3 = hantei(score :64)
print(student3)
