//
//  SubView2.swift
//  PhotoList
//
//  Created by 市川マサル on 2021/05/02.
//

import SwiftUI

struct SubView2: View {
    var body: some View {
        VStack{
            Image("Image")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("白い天使ことスピッツ")
                .padding(.bottom)
            Text("日本生まれの真っ白なわんちゃん")
        }
        .padding()
        .navigationTitle("スピッツ")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SubView2_Previews: PreviewProvider {
    static var previews: some View {
        SubView2()
    }
}
