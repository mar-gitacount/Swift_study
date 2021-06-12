//
//  ContentView.swift
//  Shared
//
//  Created by 市川マサル on 2021/06/12.
//

import SwiftUI
//キーボードを下げる
extension UIApplication {//UIApplicationクラス拡張してキーボードを下げる。
    func endEditing() {
        sendAction(
            #selector(UIResponder.resignFirstResponder),
            to:nil,from:nil,for:nil
        )
    }
}

struct ContentView: View {
    @State var theText: String = ""
    var body: some View {
        NavigationView {
            TextEditor(text: $theText)
                .lineSpacing(10)
                .border(Color.gray)
                .padding([.leading,.bottom,.trailing])
                .navigationTitle("メモ")
                .toolbar{
                    //保存ボタン
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            UIApplication.shared.endEditing()//キーボードを下げる
                            saveText(theText, "sample.txt")//ユーザー定義関数のsaveText()テキストデータを保存する
                        } label: {
                            Text("保存")
                        }
                    }
                }
        }
    }
    
    func saveText(_ textData:String, _ fileName:String){
        //docURLはユーザー定義変数
        guard let url = docURL(fileName) else {
            return
        }
        //ファイルパスへの保存
        do {
            let path = url.path
            try textData.write(toFile: path, atomically: true, encoding:  .utf8)
        } catch let error as NSError {
            print(error)
        }
    }
    
    func docURL(_ fileName:String) -> URL? {
        let fileManager = FileManager.default
        do {
            //Documentsフォルダ
            let docsUrl = try fileManager.url(
                //Documentフォルダを指定する。
                for: .documentDirectory,
                in: .userDomainMask,
                appropriateFor: nil,
                create: false)
            let url = docsUrl.appendingPathComponent(fileName)
            return url
        }catch {
            return nil
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
