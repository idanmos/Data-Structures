//
//  Stack.swift
//  Data Structures
//
//  Created by Admin on 15/04/2023.
//

import Foundation

// TODO: Implement stack using linked list

/// Implement stack using array
/**
 A data structure that represents a stack of elements.

 A stack is a last-in, first-out (LIFO) data structure. Elements are added to the top of the stack and removed from the top of the stack.

 Example usage:
 var stack = Stack<Int>()
 stack.push(1)
 stack.push(2)
 stack.push(3)
 print(stack.pop()) // Prints "3"
 print(stack.pop()) // Prints "2"
 print(stack.pop()) // Prints "1"
 
 - Complexity: The `push`, `pop`, and `peek` operations have O(1) time complexity.
 */
struct Stack<T> {
    
    /// Returns a Boolean value indicating whether the stack is empty.
    var isEmpty: Bool {
        return self.storage.isEmpty
    }
    
    /// Returns the number of elements in the stack.
    var count: Int {
        return self.storage.count
    }
    
    private var storage: [T] = []
    
    /**
     Adds an element to the top of the stack.

     - Parameter value: The element to add to the stack.
     */
    mutating func push(_ value: T) {
        self.storage.insert(value, at: 0)
    }
    
    /**
     Removes and returns the element at the top of the stack.

     - Returns: The element at the top of the stack, or `nil` if the stack is empty.
     */
    @discardableResult mutating func pop() -> T? {
        return self.storage.popLast()
    }
    
    /**
     Returns the element at the top of the stack without removing it.

     - Returns: The element at the top of the stack, or `nil` if the stack is empty.
     */
    func peek() -> T? {
        return self.storage.first
    }
    
}
