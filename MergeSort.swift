//
//  MergeSort.swift
//  SelectionSort
//
//  Created by Akshansh Thakur on 18/08/20.
//  Copyright © 2020 Akshansh Thakur. All rights reserved.
//

import Foundation

class MergeSort {

    func mergeSort(unsortedArray: [Int]) -> [Int] {
        
        guard unsortedArray.count > 1 else {return unsortedArray}
        
        let leftArray = unsortedArray[0..<unsortedArray.count/2]
        let rightArray = unsortedArray[unsortedArray.count/2..<unsortedArray.count]
        
        return mergeArrayWithSorting(left: mergeSort(unsortedArray: Array(leftArray)), right: mergeSort(unsortedArray: Array(rightArray)))
    }

    func mergeArrayWithSorting(left: [Int], right: [Int]) -> [Int] {
        
        var mergedArray: [Int] = []
        var right = right
        var left = left
        
        while left.count > 0 && right.count > 0 {
            if left.first! < right.first! {
                mergedArray.append(left.removeFirst())
            } else {
                mergedArray.append(right.removeFirst())
            }
        }
        
        if left.isEmpty {
            mergedArray.append(contentsOf: right)
        } else if right.isEmpty {
            mergedArray.append(contentsOf: left)
        }
        
        return mergedArray
    }

    
}
