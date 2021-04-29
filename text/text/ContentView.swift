//
//  ContentView.swift
//  text
//
//  Created by 市川マサル on 2021/04/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("春はあけぼのやうやう白くなりゆく、山ぎは少しあかりて、紫だちたる雲の細くたなびきたる")
            .fontWeight(.light)
            .font(.title)
            .frame(width:250)
            //y軸方向に45度回転している。
            .rotation3DEffect(.degrees(45), axis: (x:0,y:1,z:0))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
