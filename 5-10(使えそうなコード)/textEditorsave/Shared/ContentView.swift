//
//  ContentView.swift
//  Shared
//
//  Created by 市川マサル on 2021/05/25.
//

import SwiftUI

struct ContentView: View {
    @State var title_Text:String = ""
    var body: some View {
        NavigationView {
            TextEditor(text: $title_Text)
                .lineSpacing(10)
                .border(Color.gray)
                .padding([.leading,.bottom,.trailing])
                .navigationTitle("メモ")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
