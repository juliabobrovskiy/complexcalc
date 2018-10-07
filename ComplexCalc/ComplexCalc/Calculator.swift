
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    
    func add(lhs: Int, rhs: Int) -> Int {
        return lhs + rhs
    }
    
    func subtract(lhs: Int, rhs: Int) -> Int {
        return lhs - rhs
    }
    
    func multiply(lhs: Int, rhs: Int) -> Int {
        return lhs * rhs
    }
    
    func divide(lhs: Int, rhs: Int) -> Int {
        return lhs / rhs
    }
    
    func mathOp(lhs: Int, rhs: Int, op: (Int, Int) -> Int) -> Int {
        return op(lhs, rhs)
    }
    
    func add(_ nums: [Int]) -> Int {
        return nums.reduce(0, +)
    }
    
    func multiply(_ nums: [Int]) -> Int {
        return nums.reduce(1, *)
    }
    
    func count(_ nums: [Int]) -> Int {
        if(nums.isEmpty){
            return 0
        }else{
            return nums.count
        }
    }
    
    func avg(_ nums: [Int]) -> Int {
        let count = self.count(nums)
        let sum = self.add(nums)
        return sum/count
    }
    
    func mathOp(args: [Int], beg: Int, op: (Int, Int) -> Int) -> Int {
        var result = 0
        var begTemp = beg
        for each in args {
            result = op(begTemp, each)
            begTemp = result
        }
        return result
    }
    
    func add(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        let x = lhs.0 + rhs.0
        let y = lhs.1 + rhs.1
        return(x, y)
    }
    
    func subtract(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        let x = lhs.0 - rhs.0
        let y = lhs.1 - rhs.1
        return(x, y)
    }
    
    func add(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        let x = lhs["x"]! + rhs["x"]!
        let y = lhs["y"]! + rhs["y"]!
        return ["x":x, "y":y]
    }
    
    func subtract(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        let x = lhs["x"]! - rhs["x"]!
        let y = lhs["y"]! - rhs["y"]!
        return ["x":x, "y":y]
    }
}
