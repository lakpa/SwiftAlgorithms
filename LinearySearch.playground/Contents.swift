
import Foundation

// Time complexity O(n)
func searchItem(item: Int, inArray array:[Int]) -> Int {
  for i in 0..<array.count {
    if array[i] == item {
      return i
    }
  }
  return -1
}
