//
//  LinkedList.swift
//  Data Structures
//
//  Created by Admin on 12/04/2023.
//

import Foundation

class Node: CustomStringConvertible {
    
    var value: Int
    var next: Node?
    
    init(value: Int) {
        self.value = value
    }
    
    var description: String {
        return "value = \(self.value) | next = \(self.next)"
    }
    
}

class LinkedList: CustomStringConvertible {
    
    var head: Node?
    var tail: Node?
    
    init(values: [Int]) {
        guard !values.isEmpty else { return }
        
        self.head = Node(value: values[0])
        var currentNode = self.head
        
        for value in values.dropFirst() {
            let newNode = Node(value: value)
            currentNode?.next = newNode
            currentNode = newNode
        }
        
        self.tail = currentNode
    }
    
    /// Insert value at index 0
    func prepend(value: Int) {
        let newNode = Node(value: value)
        
        if self.head == nil {
            self.head = newNode
            self.tail = newNode
        } else {
            newNode.next = self.head
            self.head = newNode
        }
    }
    
    /// Insert value at the last of the list
    func append(value: Int) {
        let newNode = Node(value: value)
        
        if self.head == nil {
            self.head = newNode
            self.tail = newNode
        } else {
            self.tail?.next = newNode
            self.tail = newNode
        }
    }
    
    /// Insert value at specific index
    func insert(value: Int, index: Int) {
        if index == 0 {
            self.prepend(value: value)
            return
        }
        
        // TODO: Finish
    }
    
    func remove(index: Int) {
        // TODO: Finish
    }
    
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

class DataStructures {
    
    static func createLinkedList() {
        let list = LinkedList(values: Array(0...10))
        print(list)
    }
    
}
