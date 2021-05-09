import UIKit
//4364.8
let price = 3520 * 1.24
var ans:Double
//切り捨て4360.0
ans = floor(price/10)*10
//切り上げ4370.0
ans = ceil(price)
//四捨五入4360.0
ans = round(price)
