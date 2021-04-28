//
//  ContentView.swift
//  zukei
//
//  Created by 市川マサル on 2021/04/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //角丸四角形が作られる
        RoundedRectangle(cornerRadius: 50)
            //色を設定ができる
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            //大きさ設定をする。
            .frame(width:200,height: 400)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
