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
    dataArray.append(PhotoData(id:1,imageName: "IMG_4287", title: "スピッツ"))
    dataArray.append(PhotoData(id:2,imageName: "IMG_4347", title:"トイマンチェスターテリア"))
    dataArray.append(PhotoData(id:3,imageName: "IMG_4348",title: "チワワ"))
    dataArray.append(PhotoData(id:4,imageName: "IMG_4349",title: "マルチーズ"))
    //写真が入った配列を返す
    return dataArray
}
