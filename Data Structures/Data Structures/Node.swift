//
//  Node.swift
//  Data Structures
//
//  Created by Idan Moshe on 15/04/2023.
//

import Foundation

/// A class representing a node in a singly-linked list.
class Node<T>: CustomStringConvertible {
    
    var value: T
    var next: Node<T>?
    
    /// Initialize a new node with a given value.
    ///
    /// - Parameter value: The value to be stored in the node.
    init(value: T, next: Node<T>? = nil) {
        self.value = value
        self.next = next
    }
    
    /// A textual representation of the node, including its value and a reference to the next node.
    var description: String {
        if let next {
            return "value = \(self.value) | next = \(next)"
        } else {
            return "value = \(self.value) | next = nil"
        }
    }
    
}
