import UIKit

//料金の計算をする
func price() -> Int {
    if let num = Double(kosu) {
        let result = Int(tanka * num * tax)
        return result
    } else {
        return -1
    }
    
}
