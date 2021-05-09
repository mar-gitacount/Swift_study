//
//  ContentView.swift
//  WheelPicker
//
//  Created by 市川マサル on 2021/05/09.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedColor = 0
    var body: some View {
        VStack {
            Picker(selection: $selectedColor, label: Text("Color")) {
                Text("Red").tag(0)
                Text("Green").tag(1)
                Text("Blue").tag(2)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
