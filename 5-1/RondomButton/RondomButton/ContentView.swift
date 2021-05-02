//
//  ContentView.swift
//  RondomButton
//
//  Created by 市川マサル on 2021/05/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action: {
            //0から100までの乱数を代入
            let num = Int.random(in: 0...100)
            //Debug preview
            print(num)
        }){
            //丸四角系のボタンを作成
            Text("Random Button")
                .font(.largeTitle)
                .frame(width: 280, height: 60, alignment: .center)
                .foregroundColor(Color.white)
                .background(Color.blue)
                .cornerRadius(15,antialiased: true)
            
        }
   }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
