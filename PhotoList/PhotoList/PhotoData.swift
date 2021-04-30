//
//  PhotoData.swift
//  PhotoList
//
//  Created by 市川マサル on 2021/04/30.
//

import Foundation

//写真データを配列に入れる
var PhotoArray:[PhotoData] = makeData()
//写真データを構造体で定義する
struct PhotoData: Identifiable{
    var id: Int
    var imageName: String
    var title: String
}


func makeData()->[PhotoData]{
    //構造体PhotoData型の写真データが入った配列を作る。
    var dataArray:[PhotoData] = []
    ///写真データを追加していく。
    dataArray.append(PhotoData(id:1,imageName: "Image_4287", title: "ロキ"))
    dataArray.append(PhotoData(id:2,imageName: "Image_4347", title:"ヨシツネ"))
    dataArray.append(PhotoData(id:3,imageName: "Image_4348",title: "ルシファー"))
    dataArray.append(PhotoData(id:4,imageName: "Image_4349",title: "オオクニヌシ"))
    //写真が入った配列を返す
    return dataArray
}
