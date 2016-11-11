
import Foundation

// https://en.wikipedia.org/wiki/Heapsort

func heapSort(inout arr: [Int]) {
    // Build heap (rearrange array)
    func heapify(inout arr:[Int], _ heapSize: Int, _ rootIndex: Int) {
        var largest = rootIndex
        let leftChildIndex = 2 * rootIndex + 1
        let rightChildIndex = 2 * rootIndex + 2
      
        // If left child is larger than root
        if leftChildIndex < heapSize && arr[leftChildIndex] > arr[largest] {
            largest = leftChildIndex
        }
      
        // If right child is larger than root
        if rightChildIndex < heapSize && arr[rightChildIndex] > arr[largest] {
            largest = rightChildIndex
        }
      
        // If largest is not root
        if largest != rootIndex {
            swap(&arr[rootIndex], &arr[largest])
          
            // Recursively heapify the affected sub-tree
            heapify(&arr, heapSize, largest)
        }
    }
    
    func swap(inout value1: Int, inout _ value2: Int) {
        let temp = value1
        value1 = value2
        value2 = temp
    }
    
    // Build heap (rearrange array)
    for i in (0...arr.count/2-1).reverse() {
        heapify(&arr, arr.count, i)
    }
  
    for i in (0..<arr.count).reverse() {
        swap(&arr[0], &arr[i])
        heapify(&arr, i, 0)
    }
}

var arr = [4, 10, 3, 5, 1]
heapSort(&arr)
