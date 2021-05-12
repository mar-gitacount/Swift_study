# 5-6switch文

## 値で処理を振り分ける switch文

if文は条件式で処理を分けるが、switch文は値で処理を振り分ける。

尚、他のプログラミング言語では各caseの最後でbreakを実行してcase文を抜ける必要があるがbrekeがなくてもcase文を抜ける事ができる。

  

## switch文

switch　式{  
   case 値 1:  
      ステートメントA  
   case 値2:  
       ステートメントB  
   //複数の値を区切って指定する事ができる。  
   case 値3,値4,5:  
        ステートメントC  
　 default:  
       ステートメントD  
}

  

colorの配列をランダムのものをmycolorに代入してforutune関数を呼び出し色によって表示(あたり、はずれ)を判定している。

  

import UIKit  
var greeting = "Hello, playground"  
//colorによって処理を振り分ける。  
func fortune(color: String) {  
    switch color {  
    case "red","yellow":  
        print("\\(color)は当たり")  
    case "green":  
        print("\\(color)は大当たり")  
    default:  
        print("\\(color)は、ハズレ")  
    }  
}  
let colors = \["red","yellow","green","blue","sienta"\]  
let mycolor = colors.randomElement()  
let mycolor2 = colors.randomElement()  
//アンラップしないとエラーになる。  
fortune(color: mycolor!)  
fortune(color: mycolor2!)