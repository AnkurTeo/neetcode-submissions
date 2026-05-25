class Solution {
    var dp1 = [Int:Int]()
    var dp2 = [Int:Int]()

    func rob(_ nums: [Int]) -> Int {
        if nums.count == 1 {
            return nums[0]
        }
        return max(solve(nums, 0, nums.count - 1, &dp1), solve(nums, 1, nums.count, &dp2))
    }

    func solve(_ nums: [Int],_ index : Int, _ validArrayCount : Int,_ dp : inout [Int:Int]) -> Int{
        
        if index >= (validArrayCount) {
            return 0
        }

        if let sol = dp[index] {
            return sol
        }

        let sol1 = nums[index] + solve(nums, index + 2, validArrayCount, &dp)
        let sol2 = solve(nums, index + 1, validArrayCount, &dp)

        let ans = max(sol1, sol2)
        dp[index] = ans
        return ans
    }
}
