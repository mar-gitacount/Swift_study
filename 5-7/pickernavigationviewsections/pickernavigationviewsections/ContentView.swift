//
//  ContentView.swift
//  pickernavigationviewsections
//
//  Created by 市川マサル on 2021/05/13.
//

import SwiftUI

struct ContentView: View {
    @State var selectedSize = 2
    @State var selectedColor = 0
    let sizes = ["XS","S","M","L","LL"]
    let colors = ["Red","Green","Blue","Yellow","Pink","White"]
    var body: some View {
        NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
            Form {
                //サイズのセクション
                Section(header: Text("サイズ").font(.headline),
                        footer:Text("USサイズの少し大きめです").padding(.bottom,20)){
                    Picker(selection: $selectedSize, label: Text("Size")) {
                        ForEach(0..<sizes.count) {index in
                            Text(sizes[index])
                        }
                    }
                    Text("選んだサイズ\(sizes[selectedSize])")
                }
                
                //色のセクション
                Section(header: Text("色").font(.headline)) {
                    //colorのピッカー
                    Picker(selection: $selectedColor, label:Text("Color")) {
                        ForEach(0..<colors.count) { index in
                            Text(colors[index])
                        }
                    }
                    Text("選んだ色:\(colors[selectedColor])")
                }
            }//Form
            .navigationTitle(Text("サイズと色"))
        
        
        }
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
