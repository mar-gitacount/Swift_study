//
//  ContentView.swift
//  image_rotate
//
//  Created by 市川マサル on 2021/04/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //重ねる
        ZStack(){
            Image("km169459347804110212339")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .offset(x:0, y: 0)
                .frame(width:250,height:400)
                .clipped()
            Text("ホトトギス\n鳴きつる方をながむれば\nただ有明の月ぞ残れる\n")
                .fontWeight(.light)
                .foregroundColor(.white)
                .padding()
                .offset(x:10,y:-5)
                .frame(width:250,height: 400)
        }
        //3DのX軸方向に画像とテキストを傾ける。
        .rotation3DEffect(.degrees(45),axis:(x:1,y:0,z:0))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
