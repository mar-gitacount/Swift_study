# 5-9TextFieldのコードを書き換える

TextFieldをドロップして入力されたコードを次のように書き換える@Stateを付けた変数nameの宣言文を1行目に追加して、TextField()引数に入れる。続いてtextFiledStyle()とframe(width:)も指定する。

import SwiftUI  
  
struct ContentView: View {  
  
    @State var name: String = ""  
    var body: some View {  
        TextField("お名前は?", text: $name)  
        //角丸の枠が表示される  
            .textFieldStyle(RoundedBorderTextFieldStyle())  
            .frame(width:250)  
    }  
}  
struct ContentView\_Previews: PreviewProvider {  
    static var previews: some View {  
        ContentView()  
    }  
}

  

## 入力した名前を表示するコードを追加する。

テキストフィールドに記入した名前を表示するコード。

isemptyで変数が空かどうか判断する。

import SwiftUI  
struct ContentView: View {  
  
   @State var name: String = ""  
    var body: some View {  
        VStack {  
        TextField("お名前は?", text: $name)  
        //角丸の枠が表示される  
            .textFieldStyle(RoundedBorderTextFieldStyle())  
            .frame(width:250)  
        }  
        //名前が空でない時に表示する。  
        if(!name.isEmpty) {  
            Text("\\(name)さんこんにちは!")  
        }  
    }  
}  
struct ContentView\_Previews: PreviewProvider {  
   static var previews: some View {  
        ContentView()  
    }  
}