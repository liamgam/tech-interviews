import UIKit

/*
 1.
 given an array of integers, return an array of ints such that the value at index i of the output is the product of everything in hte input except the element at i
 */

func returnMultiplesHOF(numbers: [Int]) -> [Int] {
    var array = [Int]()
    
    for i in 0...(numbers.count - 1) {
        if numbers[i] == 0 {
            let numberMult = numbers.filter{ $0 != 0 }.reduce(1, *)
            array.append(numberMult)
        } else {
            let number = numbers.reduce(1, *) / numbers[i]
            array.append(number)
        }
        
    }
    return array
}
returnMultiplesHOF(numbers: [1, 0, 3, 0])



func returnMultiples(numbers: [Int]) -> [Int] {
    
    var arr = [Int]()
    
    for i in 0...(numbers.count - 1) {
        var sum = 1
        for j in 0...(numbers.count - 1) {
            if i != j {
                sum *= numbers[j]
            }
        }
        arr.append(sum)
        sum = 1
    }
    
    return arr
    
}
returnMultiples(numbers: [1, 0, 3, 4])


/*
 implement a stack with the following methods:
    push()      puts an item on top of the stack
    pop()       removes an element from the top of the stack
    peek()      returns the top element on the stack
    isEmpty()   returns true if elements are in the stack, else, return false
    max()       returns the max value in the stack
 
 
 |   d   |
 |   c   |
 |   b   |
 |   a   |
 
 [a, b, c, d]
 push(e) --> [a, b, c, d, e]
 pop(e)   --> [a, b, c, d]
 
 
 */

class Stack {
    var array = [Int]()
    var maxes = [Int]()
    
    
    
    func push(_ item: Int) {
        array.append(item)
        if maxes.count == 0 {
            maxes.append(item)
        } else{
            if item >= maxes.last! {
                maxes.append(item)
            }
        }
        
       
        
    }
    
    func pop(_ item: Int) {
        array.removeLast()
        
        if item == maxes.last {
            maxes.removeLast()
        }
        
    }
    
    func max() -> Int {
        return maxes.last!
    }
    
    func peek() -> Int {
        return array.last!
    }
    
    func isEmpty() -> Bool {
        if array.count == 0 {
            return true
        } else {
            return false
        }
    }
    
}

let stack = Stack()
stack.isEmpty()
stack.push(5)
stack.push(4)
stack.push(9)
stack.isEmpty()
stack.peek()
stack.pop(9)
stack.max()












































































































































