//
//  ContentView.swift
//  zukei2
//
//  Created by 市川マサル on 2021/04/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("user_default")
            .resizable()
            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            .frame(width:300,height: 400)
            .clipped()
            .rotationEffect(.degrees(10),anchor: .center)
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
