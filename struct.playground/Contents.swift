import UIKit


//関数の定義をする
func calc(adult:Int,child:Int) -> Int {
    let money = adult * 1200 + child * 500
    return money
}

//関数を実行する
let price = calc(adult:3,child:0)
print(price)
