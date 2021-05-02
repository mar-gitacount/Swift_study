//
//  ContentView.swift
//  RondomButton
//
//  Created by 市川マサル on 2021/05/02.
//

import SwiftUI

struct ContentView: View {
    //値を変更するので@Statementをつける。
    @State var msg = "Tankyou"
    var body: some View {
        VStack {
            Button("Tap") {
                if msg == "Thankyou" {
                    msg = "ありがとう"
                }else{
                    msg = "Thankyou"
                }
            }
            .font(.headline)
            .foregroundColor(.white)
            .background(
                Capsule()
                    .foregroundColor(.green)
                    .frame(width:80,height: 30)
            )
            //結果の表示
            Text(msg).padding()
        }
   }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
