class Solution {
    var dp = [Int:Int]()
    func rob(_ nums: [Int]) -> Int {
        return solve(nums, 0)
    }

    func solve(_ nums: [Int],_ index : Int) -> Int{
        if let sol = dp[index] {
            return sol
        }
        if index >= (nums.count) {
            return 0
        }
        let sol1 = nums[index] + solve(nums, index + 2)
        let sol2 = solve(nums, index + 1)

        let ans = max(sol1, sol2)
        dp[index] = ans
        return ans
    }
}
