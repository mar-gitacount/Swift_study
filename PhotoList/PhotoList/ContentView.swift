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
            //PhotoArray配列を呼び出している
            List(PhotoArray) { item in
                //行をタップすると開く詳細ビュー
                NavigationLink(destination: PhotoDetailView(photo: item)) {
                    //PhotoArrayから順番に取り出して実行している。
                    //リストに表示する各行のビュー
                    RowView(photo: item)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
