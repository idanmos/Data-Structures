//
//  StackWithLinkedListTests.swift
//  Data StructuresTests
//
//  Created by Idan Moshe on 15/04/2023.
//

import XCTest

final class StackWithLinkedListTests: XCTestCase {
    
    func testIsEmpty() {
        var stack = StackWithLinkedList<Int>()
        XCTAssertTrue(stack.isEmpty)
        
        stack.push(1)
        XCTAssertFalse(stack.isEmpty)
    }
    
    func testCount() {
        var stack = StackWithLinkedList<Int>()
        XCTAssertEqual(stack.count, 0)
        
        stack.push(1)
        XCTAssertEqual(stack.count, 1)
        
        stack.push(2)
        XCTAssertEqual(stack.count, 2)
        
        _ = stack.pop()
        XCTAssertEqual(stack.count, 1)
    }
    
    func testPush() {
        var stack = StackWithLinkedList<Int>()
        
        stack.push(1)
        XCTAssertEqual(stack.peek(), 1)
        
        stack.push(2)
        XCTAssertEqual(stack.peek(), 2)
    }
    
    func testPop() {
        var stack = StackWithLinkedList<Int>()
                
        stack.push(1)
        stack.push(2)
        
        XCTAssertEqual(stack.pop(), 2)
        XCTAssertEqual(stack.pop(), 1)
        XCTAssertNil(stack.pop())
    }
    
    func testPeek() {
        var stack = StackWithLinkedList<Int>()
        
        XCTAssertNil(stack.peek())
        
        stack.push(1)
        XCTAssertEqual(stack.peek(), 1)
        
        stack.push(2)
        XCTAssertEqual(stack.peek(), 2)
    }

}
