//
//  LinkedList.swift
//  Data Structures
//
//  Created by Idan Moshe on 12/04/2023.
//

import Foundation

/// A class representing a singly-linked list.
class LinkedList<T>: CustomStringConvertible {
    
    private(set) var head: Node<T>?
    private(set) var tail: Node<T>?
    
    private(set) var count: Int = 0
    
    /// Initializes a new instance of a linked list with the elements from the given array.
    ///
    /// - Parameter array: An array of elements to be added to the linked list.
    ///
    /// - Complexity: O(n), where n is the number of elements in the given array.
    init(values: [T]) {
        values.forEach({ self.append(value: $0) })
    }
    
    /// Returns a Boolean value indicating whether the linked list is empty.
    ///
    /// - Returns: `true` if the linked list is empty; otherwise, `false`.
    var isEmpty: Bool {
        return self.head == nil
    }
    
    /// Add a new node with a given value at the beginning of the list.
    ///
    /// - Parameter value: The value to be stored in the new node.
    func prepend(value: T) {
        let newNode = Node(value: value)
        
        if self.head == nil {
            self.head = newNode
            self.tail = newNode
        } else {
            newNode.next = self.head
            self.head = newNode
        }
        
        self.count += 1
    }
    
    /// Add a new node with a given value at the end of the list.
    ///
    /// - Parameter value: The value to be stored in the new node.
    func append(value: T) {
        let newNode = Node(value: value)
        
        if self.tail == nil {
            self.head = newNode
        } else {
            self.tail?.next = newNode
        }
        
        self.tail = newNode
        
        self.count += 1
    }
    
    /// Returns the node at a specified index in the list.
    ///
    /// - Parameter index: The index of the node to be returned.
    /// - Returns: The node at the specified index, or nil if the index is out of bounds.
    func node(at index: Int) -> Node<T>? {
        var currentNode = self.head
        var currentIndex: Int = 0
        
        while currentNode?.next != nil && currentIndex < index-1 {
            currentNode = currentNode?.next
            currentIndex += 1
        }
        
        return currentNode
    }
    
    /// Insert a new node with a given value at a specified index in the list.
    ///
    /// - Parameters:
    ///   - value: The value to be stored in the new node.
    ///   - index: The index at which the new node should be inserted.
    func insert(value: T, index: Int) {
        if index == 0 {
            self.prepend(value: value)
        } else if index == self.count {
            self.append(value: value)
        } else if index > 0 && index < self.count {
            let newNode = Node(value: value)
            let previousNode = self.node(at: index)
            newNode.next = previousNode?.next
            previousNode?.next = newNode
            
            self.count += 1
        }
    }
    
    /// Remove the node at the specified index in the list.
    ///
    /// - Parameter index: The index of the node to be removed.
    func remove(index: Int) {
        guard index >= 0 else { return }
        
        if index == 0 {
            self.head = self.head?.next
        } else {
            var previousNode = self.head
            var currentIndex: Int = 0
            
            while let currentNode = previousNode?.next {
                currentIndex += 1
                
                if currentIndex == index {
                    previousNode?.next = currentNode.next
                    break
                }
                
                previousNode = currentNode
            }
        }
    }
    
    /// Reverse the order of the nodes in the list.
    func reverse() {
        var currentNode = self.head
        var previousNode: Node<T>? = nil
        var nextNode: Node<T>? = nil
        
        while currentNode != nil {
            nextNode = currentNode?.next
            currentNode?.next = previousNode
            previousNode = currentNode
            currentNode = nextNode
        }
        
        self.head = previousNode
    }
    
    /// A textual representation of the list, showing the values of the nodes connected by arrows.
    var description: String {
        var parts: [String] = []
        
        var currentNode = self.head
        while currentNode != nil {
            parts.append("\(currentNode!.value)")
            currentNode = currentNode?.next
        }
        
        return parts.joined(separator: " -> ")
    }
    
}
