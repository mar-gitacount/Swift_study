import UIKit
//配列を定義
let personas = ["ルシファー","ミカエル","ガブリエル","ヨシツネ","マサカド","オオクニヌシ"]
//countを使って半分に分ける
let harf = personas.count / 2
let personas1 = personas[..<harf]
let personas2 = personas[harf...]
print(personas1)
print(personas2)
