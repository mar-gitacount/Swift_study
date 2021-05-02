//
//  ContentView.swift
//  CountButton
//
//  Created by 市川マサル on 2021/05/02.
//

import SwiftUI

struct ContentView: View {
    @State var num:Int = 0
    var body: some View {
        HStack{
            //数字の表示
            Text("\(num)")
                .font(.system(size: 50))
                .padding(.trailing)
            //カウントアップ
            Button(action:{num+=1},label:{
                Text("Tap").font(.largeTitle)
           })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
