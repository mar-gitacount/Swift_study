//
//  ContentView.swift
//  zukei2
//
//  Created by 市川マサル on 2021/04/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(.green)
                .frame(width:100, height:100)
                .position(x:120,y: 150)
            
            Rectangle()
                .foregroundColor(.orange)
                .frame(width:100,height: 100)
                .position(x:300,y:350)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
