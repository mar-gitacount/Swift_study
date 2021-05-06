//
//  ContentView.swift
//  Slider
//
//  Created by 市川マサル on 2021/05/06.
//

import SwiftUI

struct ContentView: View {
    @State var volume: Float = 0.0
    
    var body: some View {
        //スライダーの現在地を指す
        Text("\(volume)").frame(width:100)
        HStack {
            Image(systemName: "spekerl.slash").imageScale(.large)
            //スライダーを作る。
            Slider(value: $volume)
            Image(systemName: "speaker.3").imageScale(.large)
        }
        .frame(width:200)
    }
}
//小数点以下を2桁にする関数
func format(_ num:Double) -> String {
    let resurt = String(round(num*100)/100)
    return resurt
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
