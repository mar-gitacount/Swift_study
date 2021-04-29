//
//  ContentView.swift
//  array_list
//
//  Created by 市川マサル on 2021/04/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MetroView()
        }
    }


//helloview
struct hello_list: View {
    var body :some View {
        List(0 ..< 10) { item in//0-9の順番にitemを取り出す繰り返しになる。
            HStack {
                //番号を表示する
                Text(String(item))
                Text("Hello,world")
                
             }
        }
    }
}

//metroview
struct MetroView: View {
    //配列metroを宣言する。
    let metro = ["銀座線","丸の内線","日比谷線","東西線","千代田線","半蔵門線","南北線","副都心線"]
    var body: some View {
        //metroの数だけ配列を回す。
        List(0 ..< metro.count) { item in
            HStack {
                Text(String(item))
                //metroのitemを表示する。
                Text(metro[item])
            }            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
