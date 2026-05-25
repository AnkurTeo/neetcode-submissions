class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var maxProfit = 0
        if prices.count == 0 {
            return 0
        }
        var lastCheapestPrice = prices.first!
        for i in 1..<prices.count {
            let price = prices[i]
            if price < lastCheapestPrice {
                lastCheapestPrice = price
            } else {
                maxProfit = max(maxProfit, price - lastCheapestPrice)
            }
        }

        return maxProfit
    }
}
