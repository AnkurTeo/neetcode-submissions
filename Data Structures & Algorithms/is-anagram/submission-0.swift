class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
    var map1 = [Character: Int]()
    var map2 = [Character: Int]()

    for ch in s {
        map1[ch] = 1 + map1[ch, default: 0]
    }

    for ch in t {
        map2[ch] = 1 + map2[ch, default: 0]
    }

    return map1 == map2
}
}
