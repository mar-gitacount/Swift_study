# Datepickerのコードを書き換える

DatePickerのドロップして入力したコードを次のように書き換える。まず。@Stateをつけた変数theDateの宣言文を追加してtheDateの初期値としてDate()を代入する。Date()は実行した現在の日時を作る。theFateには現在日時を示す日時データが入る。

@Stateをつけた変数theDateを宣言する。Date()は実行した現在の日時を作る。

  

デートピッカーを作る

@State var theDate = Date()  
...  
   DatePicker(selection:$theDate,label: {Text("日時")})

  

## カレンダーを日本語で表示する

カレンダーの日付を日本語にするのは、environmentモディファでロケール(言語や国の設定)を日本、すなわち”ja\_JP”に設定する。モディファイアには次のように指定する。この設定で時刻が24時間制になる。

import SwiftUI  
struct ContentView: View {  
    @State var thaDate = Date()  
    var body: some View {  
        DatePicker(selection: $thaDate, label: { Text("日時") })  
            .environment(\\.locale, Locale(identifier: "ja\_JP"))  
            .padding(50);  
    }  
}