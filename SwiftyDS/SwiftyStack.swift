//
//  SwiftyStack.swift
//  SwiftyDS
//
//  Created by Richa Srivastava on 10/05/21.
//

import Foundation
// Array based Implementation
public class Stack<Element> {
    public init() {}
    var stackArray = [Element]()
    public func  push(val: Element)  {
        stackArray.append(val)
    }
    public func pop() -> Element? {
        return stackArray.removeLast()
    }
    public func peek() -> Element? {
        return stackArray.last
    }
}

// Linked List Based Implemention
public class LLStack<T> {
    var value: T
    var next: LLStack?
    init(val: T) {
        value = val
    }
}

public class LLStackImplementation<T> {
    var headNode: LLStack<T>?
    public init() {}
    public func pushInStack(val: T) {
        let newNode = LLStack(val: val)
        if headNode == nil {
            headNode = newNode
        } else {
            let oldHeadNode = headNode
            headNode = newNode
            newNode.next = oldHeadNode
        }
    }
    
    public func popFromStack() -> T? {
        let currentTop = headNode
        if headNode?.next != nil {
            headNode = headNode?.next
        } else {
            headNode = nil
        }
        return currentTop?.value
    }
    
    public func peek() -> T? {
        return headNode?.value
    }
}
