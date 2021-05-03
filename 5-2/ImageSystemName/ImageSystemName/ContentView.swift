//
//  ContentView.swift
//  ImageSystemName
//
//  Created by 市川マサル on 2021/05/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            Image(systemName: "sun.max")
            Image(systemName: "cloud.rain")
            Image(systemName: "camera")
            Image(systemName: "a.circle")
            Image(systemName: "calendar")
            Image(systemName: "star.fill")
                .frame(width:34,height: 34)
                .foregroundColor(Color.yellow)
                .background(Color.green)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
        }
        .imageScale(.large)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
