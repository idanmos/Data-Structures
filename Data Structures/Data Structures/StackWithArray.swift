//
//  StackWithArray.swift
//  Data Structures
//
//  Created by Idan Moshe on 15/04/2023.
//

import Foundation

///  A data structure that represents a stack of elements.
class StackWithArray<T> {
    
    /// Returns a Boolean value indicating whether the stack is empty.
    var isEmpty: Bool {
        return self.storage.isEmpty
    }
    
    /// Returns the number of elements in the stack.
    var count: Int {
        return self.storage.count
    }
    
    private var storage: [T] = []
    
    /// Adds an element to the top of the stack.
    ///
    /// - Parameter value: The element to add to the stack.
    func push(_ value: T) {
        self.storage.insert(value, at: 0)
    }
    
    /// Removes and returns the element at the top of the stack.
    ///
    /// - Returns: The element at the top of the stack, or `nil` if the stack is empty.
    @discardableResult func pop() -> T? {
        if self.storage.isEmpty {
            return nil
        }
        return self.storage.removeFirst()
    }
    
    /// Returns the element at the top of the stack without removing it.
    ///
    /// - Returns: The element at the top of the stack, or `nil` if the stack is empty.
    func peek() -> T? {
        return self.storage.first
    }
    
}
