//
//  ContentView.swift
//  pickerForeach
//
//  Created by 市川マサル on 2021/05/09.
//

import SwiftUI

struct ContentView: View {
    //サイズ
    @State var selectedSize=2
    //色
    @State var selectedColor = 0
    //サイズ配列
    let sizes = ["xs","S","M","L","LL"]
    //色配列
    let colors = ["Red","Green","Blue","Yellow","Pink","White"]
    //色配列
    var body: some View {
        VStack {
            HStack {
                //Sizeのピッカー
                Picker(selection: $selectedSize,label:Text("Size")){
                    ForEach(0..<sizes.count) {index in
                        Text(sizes[index])
                    }
                }
                .frame(width:150)
                .padding(.horizontal,10)
                .clipped()
                //colorのピッカー
                Picker(selection: $selectedColor, label:Text("Size")){
                    ForEach(0..<colors.count){index in
                        //色のアイテム
                        Text(colors[index])
                    }
                }
                .frame(width:150)
                .padding(.horizontal,10)
                .clipped()
                .onAppear(perform: {
                    selectedColor = colors.count/2
                })
            }
            //結果の表示
            HStack {
                Text("size:\(sizes[selectedSize])")
                    .padding(.horizontal,40)
                Text("color: \(colors[selectedColor])")
                    .padding(.horizontal,30)
            }
            .foregroundColor(Color.white)
            .font(.title2)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .frame(width:340,height: 50)
                    .foregroundColor(Color.green)
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
