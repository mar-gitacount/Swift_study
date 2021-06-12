//
//  ContentView.swift
//  Shared
//
//  Created by 市川マサル on 2021/05/25.
//

import SwiftUI

struct ContentView: View {
    @State private var title_Text: String = """
　　　ここにタイトルを入力してください。
     例:自分の好きなゲームについて
"""
    @State private var main_Text: String = """
     ここには本文を入力してください。
     例:僕は昔からゲームが好きで、色々あるのですがその中でもモンスターハンター略してモンハンが好きで発売すると勉強や仕事が手つかないほどハマってしまいます。それくらい勉強や仕事もできればいいのですが。
"""
    var body: some View {
        VStack{
            TextEditor(text: $title_Text)
                .lineSpacing(10)
                .border(Color.gray)
                .frame(height:150)
                .padding()
            TextEditor(text: $main_Text)
                .lineSpacing(10)
                .border(Color.gray)
        }
        .frame(width:350)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
