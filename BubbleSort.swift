//
//  BubbleSort.swift
//  SelectionSort
//
//  Created by Akshansh Thakur on 18/08/20.
//  Copyright © 2020 Akshansh Thakur. All rights reserved.
//

import Foundation

class BubbleSort {
    
    func bubbleSort(unsortedArray: [Int]) -> [Int] {
        
        var array = unsortedArray
        
        if array.isEmpty || array.count == 1 {
            print("The array is already sorted")
            return array
        }
        
        var sizeToCheck = array.count
        var swapped = true
        
        while (swapped == true) {
            swapped = false
            
            (0..<(sizeToCheck - 1)).forEach { (value) in
                if array[value] > array[value + 1] {
                    let temp = array[value]
                    array[value] = array[value + 1]
                    array[value + 1] = temp
                    swapped = true
                }
            }
            
            sizeToCheck -= 1
            
        }
        
        return array
        
    }
}
