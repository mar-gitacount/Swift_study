import UIKit
//引数で渡された配列の要素に1を足す
func incrimentNums(nums:inout [Int]){
    for i in 0..<nums.count{
        nums[i] += 1
    }
}

//元の配列
var data = [3,5,6]
//3,5,6が出力される
print(data)
incrimentNums(nums:&data)
//4,6,7が出力される
print(data)
