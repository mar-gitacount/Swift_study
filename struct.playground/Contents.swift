import UIKit

struct Member {
    let name:String
    var level = 1
    var age:Int
}

//構造体を作る
var member1 = Member(name:"市川",age:29)
var member2 = Member(name:"佐藤",level:5,age:13)

//構造体の値を利用する
let text1 = "\(member1.name)さん \(member1.age)歳、レベルは \(member1.level)です"
print(text1)

//member2のレベルに1を足す
member2.level += 1
//レベル6が出力される
print(member2)

