//
//  ViewController.swift
//  SwiftyDSExample
//
//  Created by Richa Srivastava on 10/05/21.
//

import UIKit
import SwiftyDS

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Stack array Implementation
        let stack = Stack<String>()
        stack.push(val: "Hi")
        stack.push(val: "This")
        stack.push(val: "is")
        stack.push(val: "Great")
        stack.pop()
        stack.peek()
        
        
        // Stack LinkedList Implementation
        let llstack = LLStackImplementation<String>()
        llstack.pushInStack(val: "Hi")
        llstack.pushInStack(val: "My")
        llstack.pushInStack(val: "Name")
        llstack.pushInStack(val: "is")
        llstack.pushInStack(val: "Nobita")
        llstack.popFromStack()
        llstack.peek()
        llstack.popFromStack()
    }


}

