class Solution {
    var freqMap = [Character : Int]()

    func characterReplacement(_ s: String, _ k: Int) -> Int {
        let chars = Array(s)

        var range = 0
        var left = 0

        for right in 0..<chars.count {
            let freq = updateFrequencyMap(chars[right])

            let totalItemsInRange = right - left + 1

            if (totalItemsInRange - freq) <= k {
                range = max(range, totalItemsInRange)
            } else {
                freqMap[chars[left]]! -= 1
                left += 1
            }
        }

        return range
    }

    func updateFrequencyMap(_ ch: Character) -> Int {
        freqMap[ch, default: 0] += 1

        var maxFreq = 0
        for count in freqMap.values {
            maxFreq = max(maxFreq, count)
        }

        return maxFreq
    }
}