//
//  Stack.swift
//  Data Structures
//
//  Created by Idan Moshe on 15/04/2023.
//

import Foundation

/// A data structure that represents a stack of elements.
class StackWithLinkedList<T> {
    
    private(set) var top: Node<T>?
    private(set) var bottom: Node<T>?
    
    /// Returns a Boolean value indicating whether the stack is empty.
    var isEmpty: Bool {
        return self.top == nil && self.bottom == nil
    }
    
    /// Returns the number of elements in the stack.
    private(set) var count: Int = 0
    
    /// Adds an element to the top of the stack.
    ///
    /// - Parameter value: The element to add to the stack.
    func push(_ value: T) {
        let newNode = Node(value: value)
        
        if self.top == nil {
            self.top = newNode
            self.bottom = newNode
        } else {
            newNode.next = self.top
            self.top = newNode
        }
        
        self.count += 1
    }
    
    /// Removes and returns the element at the top of the stack.
    ///
    /// - Returns: The element at the top of the stack, or `nil` if the stack is empty.
    @discardableResult func pop() -> T? {
        let topNode = self.top
        self.top = self.top?.next
        
        if self.count > 0 {
            self.count -= 1
        }
        
        return topNode?.value
    }
    
    /// Returns the element at the top of the stack without removing it.
    ///
    /// - Returns: The element at the top of the stack, or `nil` if the stack is empty.
    func peek() -> T? {
        return self.top?.value
    }
    
}
