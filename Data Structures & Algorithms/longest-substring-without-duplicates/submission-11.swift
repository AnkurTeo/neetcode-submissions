class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let chars = Array(s)
        var map = [Character: Int]()

        var left = 0
        var maxLength = 0

        for right in 0..<chars.count {
            if let prevIndex = map[chars[right]],
               prevIndex >= left {
                left = prevIndex + 1
            }

            map[chars[right]] = right
            maxLength = max(maxLength, right - left + 1)
        }

        return maxLength
    }
}