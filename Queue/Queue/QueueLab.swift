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
  
  // Find the smallest element in a queue
  static func smallestElement<T>(queue: Queue<T>) -> T? {
    return nil
  }
  
  // Find the sum of a queue of Ints
  static func sum<T>(queue: Queue<T>) -> Int {
    return 0
  }
  
  // Find out whether or not a queue is in sorted order from smallest to biggest
  /*
   Sample intput / output
   (Back) 8 <- 7 <- 3 (Front) // true
   (Back) 3 <- 7 <- 8 (Front) // false
  */
  static func isQueueSortedAscending<T>(queue: Queue<T>) -> Bool {
    return false
  }
  
  /*
   Given a Queue as input, return a reversed queue. (Hint: A stack can be helpful here)
   
   Sample Input:   (Back) 9 - 16 - 2 - 31 (Front)
   Sample Output:  (Back) 31 - 2 - 16 - 9 (Front)
  */
  func reverseQueue<T>(queue: Queue<T>) -> Queue<T> {
    return queue
  }
  
  // Determine if two Queues are equal
  func areQueuesEqual<T>(queueOne: Queue<T>, queueTwo: Queue<T>) -> Bool {
    return false
  }
}
