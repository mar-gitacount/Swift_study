import UIKit

var greeting = "Hello, playground"
//外部引数名がある関数とない関数の定義
let tanka = 240

//外部引数名なし
func calcA(num:Int) -> Int {
    let price = tanka * num
    return price
}

//外部引数明　kosu
func calcB(kosu num:Int) -> Int {
    let price = tanka * num
    return price
}

//外部引数 _
func calcC(_ num:Int) -> Int {
    let price = tanka * num
    return price
}

let priceA = calcA(num: 2)
//外部引数で指定する
let priceB = calcB(kosu: 2)
//引数を指定する必要がない
let priceC = calcC(2)

print(priceA)
print(priceB)
print(priceC)

