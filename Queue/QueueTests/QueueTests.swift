//
//  QueueTests.swift
//  QueueTests
//
//  Created by Alex Paul on 12/4/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import XCTest
@testable import Queue // app name

class QueueTests: XCTestCase {
  
  var queue = Queue<Character>()
  
  override func setUp() {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    queue.enqueue("c")
    queue.enqueue("a")
    queue.enqueue("t")
    queue.enqueue("s")
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  func testEnqueue() {
    // test, peek should be "c"
    XCTAssertEqual(queue.peek, "c", "should equal c")
  }
  
  func testCount() {
    queue.dequeue()
    XCTAssertEqual(queue.count, 3, "should be equal to \(queue.count)")
  }
}
