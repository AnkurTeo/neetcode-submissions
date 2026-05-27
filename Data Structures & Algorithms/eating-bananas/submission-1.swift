class Solution {
    func minEatingSpeed(_ piles: [Int], _ h: Int) -> Int {
        var low = 1
        var high = piles.max()!

        func canEat(_ capacity: Int) -> Bool {
            var ch = 0
            for pile in piles {
                ch = ch + Int(ceil(Double(pile)/Double(capacity)))
            }

            return ch <= h
        }
        var result = -1
        while low <= high {
            let mid = ( low + high ) / 2
            if canEat(mid) {
                result = mid
                high = mid - 1
            } else {
                low = mid + 1
            }
        }
        return result
    }
}