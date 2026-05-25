class Solution {
    var dp = [Int:Int]()
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        return min(solve(cost, 0), solve(cost, 1))
    }

    func solve(_ cost : [Int],_ index : Int) -> Int{
        if let cachedValue = dp[index] {
            return cachedValue
        }
        if index >= (cost.count) {
            return 0
        }
        
        let sol1 = cost[index] + solve(cost, index + 1)
        let sol2 = cost[index] + solve(cost, index + 2)
        dp[index] = min(sol1, sol2)
        return dp[index] ?? 0
    }
}
