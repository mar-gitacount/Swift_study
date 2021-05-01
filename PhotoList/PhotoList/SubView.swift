//
//  SubView.swift
//  PhotoList
//
//  Created by 市川マサル on 2021/05/02.
//

import SwiftUI

struct SubView: View {
    var body: some View {
        VStack{
            Image("Image")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("黒い妖精ことスキパーキ")
                .padding(.bottom)
            Text("黒い犬種で珍しいわんちゃん")
        }
        .padding()
        .navigationTitle("スキッパーキ")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SubView_Previews: PreviewProvider {
    static var previews: some View {
        SubView()
    }
}
