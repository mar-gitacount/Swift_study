//
//  ContentView.swift
//  image_rotate
//
//  Created by 市川マサル on 2021/04/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //画像を表示する。
        Image("km169459347804110212339")
            //リサイズする
            .resizable()
           //領域を埋めるように表示する。
            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            .frame(width:300,height: 300)
            //画像を円形にする。
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
