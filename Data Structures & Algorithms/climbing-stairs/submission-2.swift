class Solution {
    var map = [Int:Int]()
    func climbStairs(_ n: Int) -> Int {
        return solve(n, 0)
    }

    func solve(_ n : Int,_ index : Int) -> Int {
        if map[index] != nil {
            return map[index]!
        }
        if index == n {
            return 1
        }
        if index > n {
            return 0
        }
        let value = solve(n, index + 1) + solve(n, index + 2)
        map[index] = value
        return value
    }
}
