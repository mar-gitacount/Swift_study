import UIKit
//初期化した配列String型
var personas = [String]()
//要素を加える
personas.append("マーラ")
personas.append("ルシファー")
personas.append("ラクシャーサ")
//要素を複数いっぺんに加える
personas.append(contentsOf: ["ヨシツネ","マサカド","オオクニヌシ"])
print(personas)

//初期化済みの配列を宣言
var data = Array<Double>()
//数値が入った配列
let data1 = [3.6,5.7,1.2]
let data2 = [2.2,9.5,3.3]

//配列を連結する
data += data1
data += data2

//配列をソートする。
data.sort()
print(data)

