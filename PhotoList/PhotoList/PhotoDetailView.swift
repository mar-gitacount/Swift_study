//
//  PhotoDetailView.swift
//  PhotoList
//
//  Created by 市川マサル on 2021/05/02.
//

import SwiftUI

struct PhotoDetailView: View {
    var photo:PhotoData
    var body: some View {
        VStack {
            //画像をセットする
            Image(photo.imageName)
                //リサイズする
                .resizable()
                //アスペクト比をfitにする
                .aspectRatio(contentMode: .fit)
            //データ構造に保存された写真のタイトル
            Text(photo.title)
        }
        .padding()
        //タイトル(遷移後に表示される)
        .navigationTitle(Text(verbatim:photo.title))
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct PhotoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        //変数photo初期値を指定する。以下で表示する
        PhotoDetailView(photo: PhotoArray[0])
    }
}
