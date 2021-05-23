//
//  ContentView.swift
//  TextFieldsample
//
//  Created by 市川マサル on 2021/05/24.
//

import SwiftUI

struct ContentView: View {
    @State var name: String = ""
    var body: some View {
        VStack {
        TextField("お名前は?", text: $name)
        //角丸の枠が表示される
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .frame(width:250)
        }
        //名前が空でない時に表示する。
        if(!name.isEmpty) {
            Text("\(name)さんこんにちは!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
