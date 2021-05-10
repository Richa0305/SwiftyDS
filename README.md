# SwiftyDS

##### With SwiftyDS we can implement stack, linkedlist, queue & tree data structure in our swift app which are not available by default in the swift library. 

##### You can install the pod like below 

```
target 'MyApp' do
  pod 'SwiftyDS', '~> 1.0.2'
end
```

Stack Implementation - 

```
let stack = Stack<String>()
stack.push(val: "Hi")
stack.push(val: "This")
stack.push(val: "is")\
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
```


Queue Implementation 

```

// Queue array Implementation
let queue = Queue<String>()
queue.enQueue(val: "Hi")
queue.enQueue(val: "thr")
queue.deQueue()
        
// Queue LinkedList Implementation
let llQueue = LLQueueImp<Int>()
llQueue.enQueue(val: 1)
llQueue.enQueue(val: 2)
llQueue.deQueue()
llQueue.peek()
```
