//
//  main.swift
//  BinarySearch
//
//  Created by AbbyLai on 2017/1/22.
//  Copyright © 2017年 AbbyLai. All rights reserved.
//

import Foundation

print("Hello, World!")


struct BinarySearch {
    public func search (inputNumber:Int, inputArray:Array<Any>) -> Int {
        let min = 0
        let max = inputArray.count - 1
        return searchStart(min: min,max: max,inputArray: inputArray,searchItem: inputNumber)
    }
    
    public func searchStart (min:Int, max:Int, inputArray:Array<Any>, searchItem:Int) -> Int {
        let index : Int = (min+max)/2 
        let currentNumber = inputArray[index] as! Int
        if (max<min) {
            return -1
        }
        
        if (currentNumber == searchItem) {
            return index
        }
        else {
            if (currentNumber < searchItem) {
                let newMin:Int = index + 1;
                return searchStart(min: newMin,max: max,inputArray: inputArray,searchItem: searchItem);
            }
            else {
                let newMax:Int = index - 1;
                return searchStart(min: min,max: newMax,inputArray: inputArray,searchItem: searchItem);
            }
        }
    }
}

var search = BinarySearch()
let index = search.search(inputNumber:4, inputArray: [1,2,3,4])
print("index = \(index)")
