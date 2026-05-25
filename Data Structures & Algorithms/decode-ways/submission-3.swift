class Solution {
    var dp = [Int:Int]()
    func numDecodings(_ s: String) -> Int {
        return solve(Array(s), 0)
    }

    func solve(_ s: [Character],_ index : Int) -> Int {
        if let sol = dp[index] {
            return sol
        }

        if index == (s.count) {
            return 1
        }
        if s[index] == "0" {
            return 0
        }

        // next two digit 
        var sum = 0

        sum = sum + solve(s , index + 1)

        if index < (s.count - 1) {
            // next two char
            if let intValue = getNextTwoInt(s, index) {
                if intValue <= 26 && intValue > 9 {
                sum = sum + solve(s, index + 2) 
                } 
            }
        }

        dp[index] = sum
        return dp[index]!
    }

    func getCurrentIntValue(_ s : [Character],_ index : Int) -> Int? {
        // var string = String(s[index])
        // var intValue = Int(string)
        return Int(String(s[index]))!
    }
    
    func getNextTwoInt(_ s: [Character], _ index: Int) -> Int? {
        guard index + 1 < s.count else { return nil }
        return Int("\(s[index])\(s[index + 1])")
    }
}
