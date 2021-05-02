# 標準ブラウザで開くWebリンクリストを作る

webページのURLリストを作り、タップして選んだ行のリンク先を標準ブラウザのSafariで開けるようにする。リスト表示するWebページの名前URL,ファビコンイメージ名は構造体で定義しておく。

  

## 1.Webページのデータを構造体で定義する

Webページの名前やURLを構造体として定義する。Identifiableプロトコルを採用しid,name,url,faviconの四つのプロパティがある構造体にする。Identifiable必須のidは初期値をUUID()にする事ができる。

  

  

    struct webData: Identifiable{
        var id = UUID()
        var name:String
        var url:String
        var favicon:String
    }
    
    

  

## 2.webページのデータを構造体で定義する

Webページの名前やURLを構造体として定義する。Identifiableプロトコルを採用し、id,name,url,faviconの四つのプロパティがある構造体にする。Identifiableプロトコルで必須のIdは初期値をUUID()にしておくことができる。

    import SwiftUI
    //webデータを構造体で定義する
    struct webData: Identifiable{
        var id = UUID()
        var name:String
        var url:String
        var favicon:String
    }

  

  

## 3.Webデータの配列を作る

構造体webData(name,url,favicon)を使ってwebデータを作り、配列webListに代入しておく。

idプロパティには初期値を指定しているので値を指定する必要がない。引数faviconにはファビコン画像の登録名を指定する。

    ~略
    struct ContentView: View {
        //webデータのリストを作る
        let webList = [
            webData(name:"シンプル通信", url:"https://simplemedia.sakura.ne.jp/neomediaproject/", favicon:"flower")
        ]
    ~略

  

4.配列WebListからWebページのリンクリストを作る。

List(webList)で配列WebListからWebデータを取り出してWenページのリンクを作る。

全体を囲むNavigationViewは、リストに「Webリスト」のタイトルを表示するために使っている。

※Webページのリンクリストを作る。

          //webページのリンクリストを作る
            NavigationView {
                List(webList) {item in
                    //ファビコン
                    Image(item.favicon).resizable().frame(width:40,height: 40)
                    //リンクを貼る
                    Link(item.name, destination : URL(string: item.url)!)
                }
                .navigationBarTitle("自サイト")
            }
        }
    
    

  

## ※解説

タップするとWebブラウザでWebページを開くリンクはLink(\_title:Strig,destination:URL)の書式で作る事ができる。第一引数には外部引数名が\_なので引数名は不要。第2引数の型はURLなので、URL(stringitem.url)!のように文字列のURLからURLオブジェクトを作る。URL(string:)はnilかもしれないオプショナルバリューなので、ここでは!で強制アンラップしている。次のコードで作ったリンクをクリックするとitem.urlで得たURLのWebページがSafariなどの標準ブラウザと行き来するページとは関係がない、Webブラウザとの行き来はLinkだけで可能。

    Link(item.name, destination : URL(string: item.url)!)