# 5-7 sizeのピッカーを作る

まず最初にPicker()を使って、ホイールピッカーを作る場合と同じようにsizeのピッカーを作る。

//  
//  ContentView.swift  
//  pickernavigationview  
//  
//  Created by 市川マサル on 2021/05/13.  
//  
import SwiftUI  
  
struct ContentView: View {  
    @State var selectedSize = 2  
    let sizes = \["XS","S","M","L","LL"\]  
    var body: some View {  
        Picker(selection: $selectedSize, label: Text("Size")) {  
            ForEach(0..<sizes.count){ index in  
               Text(sizes\[index\])  
            }  
        }  
    }  
}  
struct ContentView\_Previews: PreviewProvider {  
  
    static var previews: some View {  
        ContentView()  
    }  
}