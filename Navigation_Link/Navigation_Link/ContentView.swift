//
//  ContentView.swift
//  Navigation_Link
//
//  Created by 市川マサル on 2021/04/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Helloworld")
                .font(.largeTitle)
                .fontWeight(.thin)
            Divider()
            Photo1().frame(height:200).padding()
            Divider()
            Photo2().frame(height:180).padding()
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
//写真2
struct Photo2: View {
    var body :some View{
        HStack{
            Image("sirotoudai")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("白灯台")
                .padding(.horizontal)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
