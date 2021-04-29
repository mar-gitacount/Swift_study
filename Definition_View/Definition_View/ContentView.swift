//
//  ContentView.swift
//  Definition_View
//
//  Created by 市川マサル on 2021/04/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            //Flowerビューの呼び出し
            Flower()
                .frame(height: 80)
            //テキストの呼び出し
            Hello()
                .font(.system(size: 40))
                .padding()
            //Flowerビューの呼び出し
            Flower()
                .frame(height:80)
        }
    }
}
//Helloビューの定義
struct Hello: View{
    var body: some View{
        Text("HelloWorld")
            .foregroundColor(.pink)
            .fontWeight(.thin)
            .multilineTextAlignment(.center)
    }
}

//Flowerビューの定義
struct Flower: View{
    var body: some View{
        Image("flower")
            .resizable()
            .aspectRatio(contentMode: .fit)
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
