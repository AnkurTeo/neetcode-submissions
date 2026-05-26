class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        var left = 0
        var rows = matrix.count 
        var cols = matrix.first?.count ?? 0 
        var right = rows * cols - 1
        while left <= right {
            
            var mid = left + (right - left)/2
            
            var x = mid / cols
            var y = mid % cols 
            var midVal = matrix[x][y]

            if midVal > target {
                right = mid - 1
            }
            if midVal < target {
                left = mid + 1
            }
            if midVal == target {
                return true
            }
        }
        return false
    }
}
