//
//  SwiftyDSTests.swift
//  SwiftyDSTests
//
//  Created by Richa Srivastava on 10/05/21.
//

import XCTest
@testable import SwiftyDS


class SwiftyDSTests: XCTestCase {
    var stack: Stack<String>!
    var queue: Queue<String>!
    override func setUp() {
        stack = Stack<String>()
        queue = Queue<String>()
    }
    
    func testStack() {
        stack.push(val: "Hi")
        XCTAssertEqual(stack.peek(), "Hi")
        XCTAssertEqual(stack.pop(), "Hi")
        XCTAssertNil(stack.peek())
    }
    
    func testQueue() {
        queue.enQueue(val: "Hi")
        XCTAssertEqual(queue.deQueue(), "Hi")
    }
    
}
