//
//  ContentView.swift
//  LinkURL
//
//  Created by 市川マサル on 2021/05/02.
//

import SwiftUI
//webデータを構造体で定義する
struct webData: Identifiable{
    var id = UUID()
    var name:String
    var url:String
    var favicon:String
}
struct ContentView: View {
    //webデータのリストを作る
    let webList = [
        webData(name:"シンプル通信", url:"https://simplemedia.sakura.ne.jp/neomediaproject/", favicon:"flower")
    ]
    var body: some View {
       //webページのリンクリストを作る
        NavigationView {
            List(webList) {item in
                //ファビコン
                Image(item.favicon).resizable().frame(width:40,height: 40)
                //URLチェック
                if let url = URL(string: item.url),UIApplication.shared.canOpenURL(url){
                    //リンクを貼る
                    Link(item.name, destination: url)
                } else {
                    Text(item.name).foregroundColor(.gray)+Text("URLエラー").foregroundColor(.red).italic()
                }
            }
            .navigationBarTitle("自サイト")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
