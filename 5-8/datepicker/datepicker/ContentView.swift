//
//  ContentView.swift
//  datepicker
//
//  Created by 市川マサル on 2021/05/13.
//

import SwiftUI

struct ContentView: View {
    @State var thaDate = Date()
    var body: some View {
        DatePicker(selection: $thaDate, label: { Text("日時") })
            .environment(\.locale, Locale(identifier: "ja_JP"))
            .environment(\.calendar, Calendar(identifier: .japanese))
            .padding(50);
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
