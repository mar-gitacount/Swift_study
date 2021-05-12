import UIKit

var greeting = "Hello, playground"
//colorによって処理を振り分ける。
func fortune(color: String) {
    switch color {
    case "red","yellow":
        print("\(color)は当たり")
    case "green":
        print("\(color)は大当たり")
    default:
        print("\(color)は、ハズレ")
    }
}
let colors = ["red","yellow","green","blue","sienta"]
let mycolor = colors.randomElement()
let mycolor2 = colors.randomElement()
//アンラップしないとエラーになる。
fortune(color: mycolor!)
fortune(color: mycolor2!)
