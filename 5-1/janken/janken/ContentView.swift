//
//  ContentView.swift
//  janken
//
//  Created by 市川マサル on 2021/05/03.
//

import SwiftUI

struct ContentView: View {
    let janken = ["グー","チョキ","パー"]
    @State var cpu = ""
    @State var user = ""
    @State var j = ""
    func syouhai(user:String,cpu:String) ->String {
        let r:String = ""
        if user == cpu {
            let hantei =  "あいこ"
            return hantei
        }
        //ユーザーがグーならば以下のネスト
        if user == "グー"{
            if cpu == "パー"{
                let hantei = "負け"
                return hantei
            }else if cpu == "チョキ"{
                let hantei = "勝ち"
                return hantei
            }
        }
        //ユーザーがチョキならば以下のネスト
        if user == "チョキ"{
            if cpu == "グー"{
                let hantei = "負け"
                return hantei
            }else if cpu == "パー"{
                let hantei = "勝ち"
                return hantei
            }
        }
        //ユーザーがパーなら以下のネスト
        if user == "パー"{
            if cpu == "チョキ"{
                let hantei = "負け"
                return hantei
            }else if cpu == "グー"{
                let hantei = "勝ち"
                return hantei
            }
        }
        return r
    }
    
    var body: some View {
        //ボタンを作る
        VStack {
            //
            Text("何を出す??")
                .padding()
            //グーボタンを作る
            Button(janken[0]) {
                user = janken[0]
                //強制アンラップ
                cpu = janken.randomElement()!
                j = syouhai(user:user, cpu:cpu)
            }
            .foregroundColor(.white)
            .background(
                Capsule()
                    .foregroundColor(.blue)
                    .frame(width:120,height: 40)
            )
            .padding()
            //チョキボタンを作る
            Button(janken[1]){
                user = janken[1]
                //強制アンラップ
                cpu = janken.randomElement()!
                j = syouhai(user: user, cpu: cpu)
            }
            .foregroundColor(.white)
            .background(
                Capsule()
                    .foregroundColor(.red)
                    .frame(width:120,height: 40)
            )
            .padding()
            
            //チョキボタンを作る
            Button(janken[2]){
                user = janken[2]
                //強制アンラップ
                cpu = janken.randomElement()!
                j = syouhai(user: user, cpu: cpu)
            }
            .foregroundColor(.white)
            .background(
                Capsule()
                    .foregroundColor(.green)
                    .frame(width:120,height: 40)
            )
            .padding()
            //結果の表示
            Text("相手")
            Text(cpu)
                .font(.largeTitle)
                .padding()
            Text(j)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
