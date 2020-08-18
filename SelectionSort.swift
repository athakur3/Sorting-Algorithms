//
//  SelectionSort.swift
//  SelectionSort
//
//  Created by Akshansh Thakur on 18/08/20.
//  Copyright © 2020 Akshansh Thakur. All rights reserved.
//

import Foundation

class SelectionSort {
    
    func selectionSort(unsortedArray: [Int]) -> [Int] {
        
        var array = unsortedArray
        
        if array.isEmpty || array.count == 1 {
            print("The array is already sorted")
            return array
        }
        
        var minimumIndex = 0
        
        (0..<(array.count - 1)).forEach { (outerValue) in
            
            minimumIndex = outerValue
            
            ((outerValue + 1)..<array.count).forEach { (innerValue) in
                if array[innerValue] < array[minimumIndex] {
                    minimumIndex = innerValue
                }
            }
            
            let temp = array[minimumIndex]
            array[minimumIndex] = array[outerValue]
            array[outerValue] = temp
        }
        
        return array
    }
}
