//
//  ContentView.swift
//  Navigation_Link
//
//  Created by 市川マサル on 2021/04/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List{
            Text("Content1")
            Photo1().frame(height:150)
            Text("Content2")
            Text("Content3")
            Text("Content4")
        }
    }
}

//写真１
struct Photo1: View {
    var body: some View{
        HStack{
            Image("bus")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("えぼし号")
                .padding(.horizontal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
