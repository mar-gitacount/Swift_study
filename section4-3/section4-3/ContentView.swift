//
//  ContentView.swift
//  section4-3
//
//  Created by 市川マサル on 2021/04/29.
//

import SwiftUI

struct ContentView: View {
    let shikoku = ["徳島県","香川県","愛媛県","高知県"]
    let kyusyu = ["福岡県","佐賀県","長崎県","熊本県","大分県","宮崎県","鹿児島県"]
    var body: some View {
        //リストで表示する
        List{
            //一つ目のセクション
            Section(header: Text("四国")) {
                ForEach(0..<shikoku.count){index in
                    Text(self.shikoku[index])
                    
                }
            }
            //二つ目のセクション
            Section(header: Text("九州")) {
                ForEach(0..<kyusyu.count){index in
                    Text(self.kyusyu[index])
                 
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
