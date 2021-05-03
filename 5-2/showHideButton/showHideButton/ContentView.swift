//
//  ContentView.swift
//  showHideButton
//
//  Created by 市川マサル on 2021/05/03.
//

import SwiftUI

struct ContentView: View {
    @State var isShow = true
    @State var opaValue = 1.0
    @State var btnText = "消す"
    var body: some View {
        VStack {
            Button(action: {
                isShow.toggle()
                btnText = isShow ? "消す":"表示する"
                //2秒間かけて以下のアニメーションが実行される。
                withAnimation(.easeInOut(duration: 2)){
                    opaValue = isShow ? 1.0:0.0
                }
            }){
                Text(btnText).font(.title2)
            }
            Image("asg20190402_fv")
                .resizable()
                .aspectRatio(contentMode: .fit)
                //透明度の変更がアニメーションになる。
                .opacity(opaValue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
