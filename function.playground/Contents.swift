import UIKit

//デフォルトでは0を設定する関数を定義する

func calc(adult:Int = 0 ,child:Int = 0) -> Int {
    let money = adult * 1200 + child * 500
    return money
}
//初期値はfalse
var isPlay = false

//値を返さない関数
func play() -> Void {
    isPlay = true
}
//関数を実行する
play()

//isplayがtrueになっている
print(isPlay)
