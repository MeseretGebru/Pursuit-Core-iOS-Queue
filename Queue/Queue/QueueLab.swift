//
//  QueueLab.swift
//  Queue
//
//  Created by Alex Paul on 12/4/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import Foundation

struct QueueLab {
  // write a function to print out all the elements of the queue
  static func printElementsOfQueue<T>(_ queue: Queue<T>) {
    var queue = queue // shadowing a variable (use of identical name)
    while let dequeueValue = queue.dequeue() {
      print(dequeueValue)
    }
  }
  
  // write a function to get the smallest value from a queue
  static func smallestElement<T: Comparable>(_ queue: Queue<T>) -> T? {
    var queue = queue
    guard var smallest = queue.peek else { return nil }
    while let dequeueValue = queue.dequeue() {
      if dequeueValue < smallest {
        smallest = dequeueValue
      }
    }
    return smallest
  }
}
