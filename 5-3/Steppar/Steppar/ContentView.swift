//
//  ContentView.swift
//  Steppar
//
//  Created by 市川マサル on 2021/05/05.
//

import SwiftUI

struct ContentView: View {
    @State var kosu:Int = 0
    var body: some View {
        Stepper(value: $kosu, in: 0...10) {
            Text("個数\(kosu)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
