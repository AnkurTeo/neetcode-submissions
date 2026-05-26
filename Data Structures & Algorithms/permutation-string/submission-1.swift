class Solution {
    var mapS1 = [Character:Int]()
    var mapS2 = [Character:Int]()

    func checkInclusion(_ s1: String, _ s2: String) -> Bool {

        if s1.count > s2.count {
            return false
        }

        let s2Char = Array(s2)

        for item in s1 {
            mapS1[item, default: 0] += 1
        }

        // build first window
        for i in 0..<s1.count {
            mapS2[s2Char[i], default: 0] += 1
        }

        for i in 0...(s2.count - s1.count) {

            if isAnagram() {
                return true
            }

            // slide window (skip after last window)
            if i < s2.count - s1.count {

                let outgoing = s2Char[i]
                let incoming = s2Char[i + s1.count]

                mapS2[outgoing]! -= 1
                if mapS2[outgoing] == 0 {
                    mapS2.removeValue(forKey: outgoing)
                }

                mapS2[incoming, default: 0] += 1
            }
        }

        return false
    }

    func isAnagram() -> Bool {
        return mapS1 == mapS2
    }
}