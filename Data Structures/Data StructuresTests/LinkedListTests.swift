//
//  Data_StructuresTests.swift
//  Data StructuresTests
//
//  Created by Admin on 12/04/2023.
//

import XCTest

final class LinkedListTests: XCTestCase {
    
    func testCreateLinkedList() {
        let list = LinkedList(values: Array(0...10))
        XCTAssertEqual(list.description, "0 -> 1 -> 2 -> 3 -> 4 -> 5 -> 6 -> 7 -> 8 -> 9 -> 10")
    }
    
    func testPrepend() {
        let list = LinkedList(values: [1, 2, 3])
        list.prepend(value: 0)
        XCTAssertEqual(list.description, "0 -> 1 -> 2 -> 3")
    }
    
    func testAppend() {
        let list = LinkedList(values: [1, 2, 3])
        list.append(value: 4)
        XCTAssertEqual(list.description, "1 -> 2 -> 3 -> 4")
    }
    
    func testInsert() {
        let list = LinkedList(values: [1, 2, 4])
        list.insert(value: 3, index: 2)
        XCTAssertEqual(list.description, "1 -> 2 -> 3 -> 4")
    }
    
    func testRemove() {
        let list = LinkedList(values: [1, 2, 3, 4])
        list.remove(index: 2)
        XCTAssertEqual(list.description, "1 -> 2 -> 4")
    }
    
    func testReverse() {
        let list = LinkedList(values: [1, 2, 3])
        list.reverse()
        XCTAssertEqual(list.description, "3 -> 2 -> 1")
    }
    
}
