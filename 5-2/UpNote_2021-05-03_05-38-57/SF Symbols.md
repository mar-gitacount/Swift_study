# SF Symbols

ハートマークやうさぎ、かめといった絵はイメージを用意しなくても手軽に使えるSFSymbolsである。SF Symbolsを利用するには,Image(systemName:”sum.max”)のように指定する。
※詳細については以下のサイトからダウンロードすることができる
URL: https://developer.apple.com/sf-symbols/
イメージの大きさはimageScale()で.small,.medium,.largeから指定する。

    import SwiftUI
    struct ContentView: View {
    
        var body: some View {
            HStack{
                Image(systemName: "sun.max")
                Image(systemName: "cloud.rain")
                Image(systemName: "camera")
                Image(systemName: "a.circle")
                Image(systemName: "calendar")
                Image(systemName: "star.fill")
                    .frame(width:34,height: 34)
                    .foregroundColor(Color.yellow)
                    .background(Color.green)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            }
            .imageScale(.large)
        }
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
