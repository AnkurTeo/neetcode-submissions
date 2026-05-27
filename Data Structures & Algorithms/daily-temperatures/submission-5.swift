class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var array = [Int](repeating : 0, count : temperatures.count)

        var minStack = [Int]()

        for i in 0..<temperatures.count {
            var item = temperatures[i]
            while !minStack.isEmpty && temperatures[minStack.last!] < item {
                if let poppedItem = minStack.popLast() {
                    // array[item] = i // it this was a simple NGR
                    array[poppedItem] = i - poppedItem 
                }
            }
            minStack.append(i)
        }

        return array
    }
}
