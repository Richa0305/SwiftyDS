//
//  SwiftyStack.swift
//  SwiftyDS
//
//  Created by Richa Srivastava on 10/05/21.
//

import Foundation
// Array based Implementation
class Stack<Element> {

    var stackArray = [Element]()
    func  push(val: Element)  {
        stackArray.append(val)
    }
    func pop() -> Element? {
        return stackArray.removeLast()
    }
    func peek() -> Element? {
        return stackArray.last
    }
}

// Linked List Based Implemention
class LLStack<T> {
    var value: T
    var next: LLStack?
    init(val: T) {
        value = val
    }
}

class LLStackImplementation<T> {
    var headNode: LLStack<T>?
    
    func pushInStack(val: T) {
        let newNode = LLStack(val: val)
        if headNode == nil {
            headNode = newNode
        } else {
            let oldHeadNode = headNode
            headNode = newNode
            newNode.next = oldHeadNode
        }
    }
    
    func popFromStack() -> T? {
        let currentTop = headNode
        if headNode?.next != nil {
            headNode = headNode?.next
        } else {
            headNode = nil
        }
        return currentTop?.value
    }
    
    func peek() -> T? {
        return headNode?.value
    }
}
