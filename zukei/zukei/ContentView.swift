//
//  ContentView.swift
//  zukei
//
//  Created by 市川マサル on 2021/04/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //楕円形
        Ellipse()
             //オレンジ
            .foregroundColor(.orange)
             //大きさ
            .frame(width:200,height:400)
            //45度傾ける
            .rotationEffect(.degrees(45))
            //傾いて領域からはみ出た部分をクリッピングする。
            .clipped()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
