import UIKit

//let colors = ["green","red","blue","orange"]
//for _ in 1...5{
//    //配列colorsから要素をランダムに取り出す
//    let item = colors.randomElement()
//    //強制的にアンラップする
//    print(item!)
//}

//文字列"ABCDEFGHIJKLMNから5文字を選ぶ
let letters = "ABCDEFGHIJKLMN"
for _ in 1 ... 5 {
    let item = letters.randomElement()
    print(item!)
}
