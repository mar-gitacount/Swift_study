//
//  ContentView.swift
//  array_list
//
//  Created by 市川マサル on 2021/04/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(0 ..< 10) { item in//0-9の順番にitemを取り出す繰り返しになる。
            HStack {
                //番号を表示する
                Text(String(item))
                Text("Hello,world")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
