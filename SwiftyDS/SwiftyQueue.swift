//
//  SwiftyQueue.swift
//  SwiftyDS
//
//  Created by Richa Srivastava on 10/05/21.
//

import Foundation


// Array Implemantation
public class Queue<T> {
    public init() {}
    var arr = [T]()
    public func enQueue(val: T) {
        arr.append(val)
    }
    public func deQueue() -> T? {
        if arr.isEmpty {
            return nil
        } else {
            return arr.remove(at: 0)
        }
    }
}


// Linked List Implementation
public class LLQueue<T> {
    var data: T
    var next: LLQueue?
    init(val: T) {
        data = val
    }
}

public class LLQueueImp<T> {
    public init() {}
    public var head: LLQueue<T>?
    public var front: LLQueue<T>? { return head }
    public var rear: LLQueue<T>? {
        var node:LLQueue<T>? = self.head
        while (node?.next != nil) {
            node = node?.next
        }
        return node
    }
    
    public func enQueue(val: T) {
        let newNode =  LLQueue(val: val)
        if let lastNode = rear {
            lastNode.next = newNode
        } else {
            head = newNode
        }
    }
    
    public func deQueue() -> T? {
        if head == nil {
            return nil
        }
        let temp = head
        if head?.next != nil {
            head = head?.next
        } else {
            head = nil
        }
        return temp?.data
    }
    
    public func peek() -> T? {
        return head?.data
    }
    
    public func isEmpty() -> Bool {
        return (head == nil) ? true : false
    }
}
