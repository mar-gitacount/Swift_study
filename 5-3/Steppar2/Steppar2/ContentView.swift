//
//  ContentView.swift
//  Steppar2
//
//  Created by 市川マサル on 2021/05/05.
//

import SwiftUI


struct ContentView: View {
    @State var kosu:Int = 0
    let tanka = 240
    var body: some View {
        
        VStack {
            Stepper (
                //+ボタンで実行する
                onIncrement: {
                    kosu += 5
                    //最大値
                    kosu = min(kosu,30)
                    
                },
                //-ボタンで実行する
                onDecrement: {
                    kosu -= 5
                    //最小値
                    kosu = max(kosu,0)
                    
                },
                label: {Text("個数:\(kosu)")}
            ).frame(width:200)
            //関数を呼び出す。
            Text("料金:\(calc(kosu))円(税込)")
        }
    }
    
    //料金の金額を返す関数
    func calc(_ num:Int) -> Int{
        //numが個数として料金を計算する
        let price = tanka * num
        //消費税をかけている
        let result = Double(price) * 1+0.1
        return Int(result)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
