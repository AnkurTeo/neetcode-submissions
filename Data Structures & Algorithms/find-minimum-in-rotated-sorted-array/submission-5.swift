// class Solution {
//     func findMin(_ nums: [Int]) -> Int {
//         var left = 0
//         var right = nums.count - 1
//         var result = 0
//         while left <= right {
//             let mid = left + (right - left) / 2
            
//             if nums[mid] > nums[right] {
//                 left = mid + 1
//             } else {
//                 result = mid
//                 right = mid - 1
//             }
//         }

//         return nums[result]
//     }
// }

class Solution {
    func findMin(_ nums: [Int]) -> Int {
        var left = 0
        var right = nums.count - 1
        var result = right   // assume last element initially
        let target = nums[right]
        while left <= right {
            let mid = left + (right - left) / 2

            if nums[mid] > target {
                left = mid + 1
            } else {
                result = mid
                print(mid, left, right)
                right = mid - 1
            }
        }

        return nums[result]
    }
}


