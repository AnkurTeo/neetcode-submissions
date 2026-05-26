class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var minStack = [Int]() // indices
        var arr = [Int](repeating: 0, count: temperatures.count)

        for (index, _) in temperatures.enumerated() {

            if minStack.isEmpty {
                minStack.append(index)
                continue
            }

            while let last = minStack.last,
                  temperatures[index] > temperatures[last] {
                arr[last] = index - last
                minStack.removeLast()
            }
            
            minStack.append(index)
        }
        return arr
    }
}