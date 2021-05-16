//
//  ContentView.swift
//  DatePickerDisplayedComponents
//
//  Created by 市川マサル on 2021/05/16.
//

import SwiftUI

struct ContentView: View {
    @State var theDate = Date()
    var body: some View {
        VStack (alignment:.leading,spacing: 10){
            //日付ピッカー
            DatePicker("日付",selection:$theDate,displayedComponents:.date)
                .frame(width:200)
            //時刻ピッカー
            DatePicker("時刻",selection:$theDate,displayedComponents:.date)
                .frame(width:200)
            //ピッカーで選択している日時
            Text(theDate.description(with: Locale(identifier: "ja_JP")))
                .font(.footnote)
        }
        .padding()
        .border(Color.gray,width: 1)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
