//
//  ContentView.swift
//  ToggleSample
//
//  Created by 市川マサル on 2021/05/03.
//

import SwiftUI

struct ContentView: View {
    @State var isFast = true
    var body: some View {
        HStack {
            //ボタンアクションを追加する
            Button(action: {
                withAnimation{
                //trueとfalse切り替え
                isFast.toggle()
                }
             }){
                //アクション内容
                //ボタン名の変更
                Text(isFast ? "Run" : "STOP")
                //テキストのレイアウト
                    .font(.title)
                    //trueの時はボタンが赤falseの時は黒
                    .foregroundColor(isFast ? .red: .black)
                //イメージの変更
                //trueの時はうさぎでfalseの時はかめ
                Image(systemName: isFast ? "hare" : "tortoise")
                //うさぎとかめの色を決めるtrue = 青　false = "緑"
                    .foregroundColor(isFast ? .blue : .green)
                    //falseの時の亀はひっくり返したいのでratationEfectoを使って傾ける
                    .rotationEffect(.degrees(isFast ? 0 : 180))
                    //3倍サイズにする
                    .scaleEffect(3)
                    .frame(width:100)
            }.frame(width:240,height: 70)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
