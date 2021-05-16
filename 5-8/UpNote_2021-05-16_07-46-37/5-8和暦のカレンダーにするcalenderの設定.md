# 5-8和暦のカレンダーにする(calenderの設定)

カレンダーの日本語化にはlocalの日本語表示とは別にcalenderの設定もある。calenderをjapaneseにすることで、日付元号を使った和暦表示になる。なお、localを指定しなければ元号は「Reiwa」と表示される。

struct ContentView: View {  
    @State var thaDate = Date()  
    var body: some View {  
        DatePicker(selection: $thaDate, label: { Text("日時") })  
            .environment(\\.locale, Locale(identifier: "ja\_JP"))  
            .environment(\\.calendar, Calendar(identifier: .japanese))  
            .padding(50);  
    }  
}