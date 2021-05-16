//
//  ContentView.swift
//  DatePickercloseRange
//
//  Created by 市川マサル on 2021/05/16.
//

import SwiftUI

struct ContentView: View {
    @State var theDate = Date()
    //選択できる日付の範囲
    var dateClosedRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .day, value: -7, to:Date())!
        let max = Calendar.current.date(byAdding: .day, value: 1, to: Date())!
        //min日からmax日の日付
        return min...max;
    }
    //デートピッカーを作る。
    var body: some View {
        DatePicker(selection: $theDate, in:dateClosedRange,label: { Text("日時") })
            .environment(\.locale, Locale(identifier: "ja_JP"))
            .frame(height:50)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
