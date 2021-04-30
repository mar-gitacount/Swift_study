//
//  RowView.swift
//  PhotoList
//
//  Created by 市川マサル on 2021/05/01.
//

import SwiftUI

struct RowView: View {
    //写真データ1個分のビューを作る
    var photo:PhotoData
    
    var body: some View {
        //横ならびにする。
        HStack {
            //構造体のPhotoDateデータを抽出し表示している。
            Image(photo.imageName)
                .resizable()
                .frame(width:80,height: 80)
            //構造体のPhotoDateに紐づくtitelを抽出して表示している。
            Text(photo.title)
            Spacer()
        }
       
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        //最初の写真データを使って1行分のプレビューを作る。
        RowView(photo:PhotoArray[2])
            .previewLayout(.fixed(width:300, height: 80))
    }
}
