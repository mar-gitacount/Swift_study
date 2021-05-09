# Pickerのコード

Pickerをドロップして入力されたコードを次のように書き換える。

まず、@Stateをつけた変数selectedColorの宣言文を1行目に追加する。続いてPickerをコマンドクリックしてアクションメニューから「Embded in VStack」を選択してVStackで囲む。最後にPicker文のコードを修正する。Red,Green,Blueの色を選択できるホイールピッカーの完成。

import SwiftUI  
struct ContentView: View {  
  
    @State private var selectedColor = 0  
    var body: some View {  
        VStack {  
            Picker(selection: $selectedColor, label: Text("Color")) {  
                Text("Red").tag(0)  
                Text("Green").tag(1)  
                Text("Blue").tag(2)  
            }  
        }  
    }  
}

  

  

## 選択した色をカラービューとテキストで表示するコードを追加する

まず、変数colorViewsとcolorNamesの配列を作るコードを追加する。次にホイールピッカーで選択した色をカラービュー、番号、色名で表示するコードをHStackで並べてこの3つがホイールの下に配置されるようにVStackに追加する。選んだ文字によって文字の長さが変化して位置が動くのでTextの幅をframeで指定しておく。

  

import SwiftUI  
struct ContentView: View {  
    @State private var selectedColor = 0  
    let colorViews = \[Color.red,Color.green,Color.blue\]  
    let colorNames = \["Red","Green","Blue"\]  
    var body: some View {  
        VStack {  
            Picker(selection: $selectedColor, label: Text("Color")) {  
                Text("Red").tag(0)  
                Text("Green").tag(1)  
                Text("Blue").tag(2)  
            }  
            HStack {  
                colorViews\[selectedColor\]  
                    .frame(width:50,height:100)  
                Text("value: \\(selectedColor)").frame(width:60)  
                Text("\\(colorNames\[selectedColor\])").frame(width:70)  
            }  
       }  
        .padding()  
    }  
}  
struct ContentView\_Previews: PreviewProvider {  
    static var previews: some View {  
        ContentView()  
    }  
}

## ホイールピッカーのアイテムとtag()の値

ホイールピッカーはPickerで作る。ホイールを回して選択できるアイテムはPicker()のブロックでText(”Red”).tag(0),Text(”Green”).tag(1)のようにテキストで指定する事ができる。アイテムの順番は実行順ではなく、tag()で指定するインデックス番号だが、作成後に並べ替えを行わない場合は設定を省略する事ができる。

Picker(selection: $selectedColor, label: Text("Color")) {  
                Text("Red").tag(0)  
                Text("Green").tag(1)  
                Text("Blue").tag(2)  
}

  

そしてホイールを回して値を決めた時にこの番号がPicker()引数selectionで指定した変数selectedColorに入る。この値を配列のインデックス番号として使い、colorViewsからColorのビューを取り出し、colorNamesから色名を取り出して表示する。

HStack {  
                colorViews\[selectedColor\]  
                    .frame(width:50,height:100)  
                Text("value: \\(selectedColor)").frame(width:60)  
                Text("\\(colorNames\[selectedColor\])").frame(width:70)  
            }