class Solution {
    var dp = [Int:Int]()

    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        solve(coins, amount, 0)
    }


    func solve(_ coins: [Int], _ amount: Int,_ index : Int) -> Int {
        if let val = dp[amount] {
            return val
        }
        if amount == 0 {
            return 0
        }
        if amount < 0 {
            return -1
        }
        var sol = Int.max
        for i in 0..<coins.count {
            let ans = solve(coins, amount - coins[i], i)
            if ans != -1 {
                sol = min(sol, ans + 1)
            }
        }

        if sol == Int.max {
            dp[amount] = -1
        } else {
            dp[amount] = sol
        }
        return dp[amount]!
    }
}
