import UIKit

func calc (adult:Int = 0, child:Int = 0) -> Int{
    let money = adult * 1200 + child * 500
    return money
}

let adult1 = calc(adult:2)
let chid2 = calc(child:2)
print("大人2人　\(adult1)")
print("子供2人 \(chid2)")
