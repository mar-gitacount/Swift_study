# Buttonでトグルボタンを実装する。

Toggleを使わずにButtonでもトグルボタンを作る事ができる。

ここで利用するのはtrueの値ならばfalse,falseの値ならばtrueというように、値を裏返すように反転させるtoggle()。

下記のコードでは「isFast.toggle()」を実行している。「isFast」はBool型の変数で、toggle()を実行するとtrueとfalseが反転する。if-elseを使う代わりに「?:演算子」を使ってisFastがtrueだった時とfalseだった時に実行する式に変化をつけている。

以下のコードは「isFast:」を使ってアニメーションを制御している。

    //
    //  ContentView.swift
    //  ToggleSample
    //
    //  Created by 市川マサル on 2021/05/03.
    //
    import SwiftUI
    struct ContentView: View {
        @State var isFast = true
        var body: some View {
            HStack {
                //ボタンアクションを追加する
                Button(action: {
                    withAnimation{
                    //trueとfalse切り替え
                    isFast.toggle()
                    }
                 }){
                    //アクション内容
                    //ボタン名の変更
                    Text(isFast ? "Run" : "STOP")
                    //テキストのレイアウト
                        .font(.title)
                        //trueの時はボタンが赤falseの時は黒
                        .foregroundColor(isFast ? .red: .black)
                    //イメージの変更
                    //trueの時はうさぎでfalseの時はかめ
                    Image(systemName: isFast ? "hare" : "tortoise")
                    //うさぎとかめの色を決めるtrue = 青　false = "緑"
                        .foregroundColor(isFast ? .blue : .green)
                        //falseの時の亀はひっくり返したいのでratationEfectoを使って傾ける
                        .rotationEffect(.degrees(isFast ? 0 : 180))
                        //3倍サイズにする
                        .scaleEffect(3)
                        .frame(width:100)
                }.frame(width:240,height: 70)
            }
        }
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

  

論理値によって値を選ぶ?:演算子

?:演算子は論理値によってA,Bどちらの値を使うかを選ぶことができる演算子、書式は以下の通り

  

    条件式? trueの場合の処理:falseの場合の処理

  

※解説

ボタン名と文字色を?:で選ぶ

true場合は”RUN”をfalseの場合は”STOP”を設定して色も変更している。

    Text(isFast ? "Run" : "STOP")
                    //テキストのレイアウト
                        .font(.title)
                        //trueの時はボタンが赤falseの時は黒
                        .foregroundColor(isFast ? .red: .black)

  

※解説

イメージ名、色、回転角度を?:で選ぶ

    Image(systemName: isFast ? "hare" : "tortoise")
                    //うさぎとかめの色を決めるtrue = 青　false = "緑"
                        .foregroundColor(isFast ? .blue : .green)
                        //falseの時の亀はひっくり返したいのでratationEfectoを使って傾ける
                        .rotationEffect(.degrees(isFast ? 0 : 180))

  

※アニメーションの活用

うさぎからかめ、うさぎからかめと替わる時に絵が180度回転するアニメーションになる。このアニメーションはButtonで実行するコードのwithAnimation{}によるもの。これにより、属性値(角度、座標、スケールといったプロパティ)空の目標値への変化が徐々に行われるアニメーションになる。

  

※属性値の変化をアニメーションにする。

    withAnimation{
                   //trueとfalse切り替え
                    isFast.toggle()
                    }