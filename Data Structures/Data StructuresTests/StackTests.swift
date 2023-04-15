//
//  StackTests.swift
//  Data StructuresTests
//
//  Created by Admin on 15/04/2023.
//

import XCTest

class StackTests: XCTestCase {

    func testEmptyStack() {
        var stack = Stack<Int>()
        XCTAssertTrue(stack.isEmpty)
        XCTAssertEqual(stack.count, 0)
        XCTAssertNil(stack.pop())
        XCTAssertNil(stack.peek())
    }

    func testPushAndPop() {
        var stack = Stack<Int>()
        stack.push(3)
        stack.push(2)
        stack.push(1)
        XCTAssertEqual(stack.count, 3)
        XCTAssertEqual(stack.peek(), 1)
        XCTAssertEqual(stack.pop(), 1)
        XCTAssertEqual(stack.count, 2)
        XCTAssertEqual(stack.peek(), 2)
        XCTAssertEqual(stack.pop(), 2)
        XCTAssertEqual(stack.count, 1)
        XCTAssertEqual(stack.peek(), 3)
        XCTAssertEqual(stack.pop(), 3)
        XCTAssertTrue(stack.isEmpty)
        XCTAssertNil(stack.peek())
        XCTAssertNil(stack.pop())
    }

}
