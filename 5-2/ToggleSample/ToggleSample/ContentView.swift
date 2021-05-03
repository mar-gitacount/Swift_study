//
//  ContentView.swift
//  ToggleSample
//
//  Created by 市川マサル on 2021/05/03.
//

import SwiftUI

struct ContentView: View {
    //変数iLikeを追加する
    @State var iLike = true
    var body: some View {
        //第二引数にiLikeを渡してisOnの時にはtrueそうでない時はLike or Notを出力する
        VStack {
            Toggle(isOn: $iLike) {
                Text("Like or Not")
                    .font(.largeTitle)
            }
            .fixedSize()
            .padding(50)
            
            if iLike {
                Image(systemName:"heart.fill")
                    .font(.system(size: 80))
                    .foregroundColor(.red)
            }else{
                Image(systemName: "heart.slash")
                    .font(.system(size: 80))
                    .foregroundColor(.gray)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
