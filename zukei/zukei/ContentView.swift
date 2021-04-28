//
//  ContentView.swift
//  zukei
//
//  Created by 市川マサル on 2021/04/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Ellipse()
                .stroke(lineWidth: 4)
                .foregroundColor(.pink)
                .frame(width:100,height: 300)
            Ellipse()
                .stroke(lineWidth: 4)
                .foregroundColor(.purple)
                .frame(width:100,height: 300)
                //回転させる
                .rotationEffect(.degrees(30),anchor: .bottom)
            Ellipse()
                .stroke(lineWidth: 4)
                .foregroundColor(.green)
                .frame(width:100,height: 300)
                //傾ける。下を起点とする。
                .rotationEffect(.degrees(-30),anchor: .bottom)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
