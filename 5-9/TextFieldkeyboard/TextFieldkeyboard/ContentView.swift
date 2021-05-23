//
//  ContentView.swift
//  TextFieldkeyboard
//
//  Created by 市川マサル on 2021/05/24.
//

import SwiftUI

extension UIApplication {
    //キーボードを下げる
    func endEditing(){
        sendAction(
            #selector(UIResponder.resignFirstResponder),
            to: nil, from: nil, for: nil
        )
    }
}

struct ContentView: View {
    @State var kosu:String = ""
    let tanka:Double = 250
    let tax:Double = 1.1
    var body: some View {
        ZStack {
            //背景のタップでキーボードを下げる
            Color.white//背景を作る
                .onTapGesture {
                    UIApplication.shared.endEditing()
                }
        }
        VStack (alignment: .leading) {
            //入力テキストフィールド
            HStack {
                Text("個数:").padding(.horizontal,0)
                TextField("0",text: $kosu)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    //キーボードの種類を取得する。
                    .keyboardType(.numberPad)
                    .frame(width: 100)
            }
            .font(.title)
            .frame(width: 200)
            
            //計算結果の表示
            Group {
                if kosuCheck(min: 1, max: 10) {
                    Text("\(price())円です。")
                        .font(.title)
                }else {
                    Text("個数は1~10個入れてください")
                        .foregroundColor(.red)
                        .font(.headline)
                }
            }.frame(width: 300, height: 30)
        }
    }
    //個数チェックの関数
    func kosuCheck(min: Int , max:Int) -> Bool {
        guard let num = Int(kosu) else {
            return false
        }
        //範囲に入っていればtrue
        return (num>=min && num<=max)
    }
    //料金の計算
    func price() -> Int {
        //kosuを数値に変換できる時アンラップする。
        if let num = Double(kosu) {
            let result = Int(tanka * num * tax)
            return result
        }else {
            return -1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
