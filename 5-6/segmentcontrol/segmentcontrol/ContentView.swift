//
//  ContentView.swift
//  segmentcontrol
//
//  Created by 市川マサル on 2021/05/09.
//

import SwiftUI

struct ContentView: View {
    @State var selectedColor = 0
    let colorViews = [Color.red,Color.green,Color.blue]
    var body: some View {
        VStack {
            Picker(selection: $selectedColor, label: Text("Color")) {
                Text("Red").tag(0)
                Text("Green").tag(1)
                Text("blue").tag(2)
                
            }
            //このスタイルでセグメンテッドコントロール
            .pickerStyle(SegmentedPickerStyle())
            //選んだ結果を表示する。
            symbolImage(num: selectedColor)
                .resizable()
                .foregroundColor(colorViews[selectedColor])
                .frame(width:100,height:100)
                .padding()
        }
        .padding()
    }
    //シンボルイメージを選ぶ関数を定義する。
    func symbolImage(num:Int) -> Image{
        switch num {
        case 0:
            return Image(systemName: "r.circle")
        case 1 :
            return Image(systemName: "g.circre")
        case 2 :
            return Image(systemName: "b.circle")
        default:
            return Image(systemName: "r.circle")
            
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
