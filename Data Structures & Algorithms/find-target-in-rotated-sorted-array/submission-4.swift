class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var pivot = findPivotIndex(nums, target)
        print(pivot)
        var item = nums[pivot]
        if item == target {
            return pivot
        }
        if target >= nums[pivot] && target <= nums[nums.count - 1] {
    return search1(nums, target, pivot, nums.count - 1)
} else {
    return search1(nums, target, 0, pivot - 1)
}

    }

    func findPivotIndex(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1

        while left < right {
            var mid = left + (right - left)/2
            var midV = nums[mid]
            var leftV = nums[left]
            var rightV = nums[right]

            if midV > rightV {
                left = mid + 1
            } else {
                right = mid
            }
        }
        return left
    }

      func search1(_ nums: [Int], _ target: Int,_ left : Int,_ right : Int) -> Int {
        var left = left, right = right
        while left <= right {
            let mid = left + (right - left)/2
            if  nums[mid] < target  {
                left = mid + 1
            } else if nums[mid] > target {
                right = mid - 1
            } else {
                return  mid
            }
        }
        return -1
     }
}
