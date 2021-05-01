//
//  ContentView.swift
//  PhotoList
//
//  Created by 市川マサル on 2021/04/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 5){
                Image("Image")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height:200)
                //SubViewを開くリンクボタンを作る。
                NavigationLink(destination: SubView()){
                    Text("スキパーキ")
                }
                .padding()
                
                Image("IMG_4287")
                    .resizable()
                    .aspectRatio(contentMode:.fit)
                    .frame(height:200)
                NavigationLink(destination: SubView2()){
                    Text("スピッツ")
                }
            }.navigationTitle("似て非なる白と黒の二つの犬種")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
