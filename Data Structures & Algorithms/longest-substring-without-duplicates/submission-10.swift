class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let charArray = Array(s)
        var map = [Character : Int]()

        if s.isEmpty {
            return 0
        }

        var left = 0 
        var right = 1


        // put char in map
        map[charArray[0]] = 0
        var range = 1
        while right < s.count {
            // check if char in map

            if let value = map[charArray[right]] {
                // clear map values till this point
                while left < value + 1 {
                    map[charArray[left]] = nil
                    left = left + 1
                }
                left = value + 1
                // clear out map till left value
                
            } 
            map[charArray[right]] = right
            range = max(range, right - left + 1)
            right = right + 1
        }
        return range

    }
}
