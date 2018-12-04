//
//  LLNode.swift
//  Queue
//
//  Created by Alex Paul on 12/4/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import Foundation

class LLNode<T: Equatable>: Equatable, CustomStringConvertible {
  var value: T // value of type T, e.g Int, String....
  var next: LLNode? // next value could be nil or pointing to a Node
  
  var description: String {
    guard let next = next else { return "nil <- \(value)" }
    return "\(next) <- \(value)"
  }
  
  init(value: T) {
    self.value = value
  }
  
  static func ==(lhs: LLNode, rhs: LLNode) -> Bool {
    return
      lhs.value == rhs.value &&
      lhs.next == rhs.next
  }
}
