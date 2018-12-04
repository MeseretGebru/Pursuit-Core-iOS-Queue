//
//  QueueLabTests.swift
//  QueueTests
//
//  Created by Alex Paul on 12/4/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import XCTest
@testable import Queue // app name

class QueueLabTests: XCTestCase {
  
  override func setUp() {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  func testSmallestElement() {
    var queue = Queue<Int>()
    queue.enqueue(-5)
    queue.enqueue(11)
    queue.enqueue(-33)
    queue.enqueue(17)
    XCTAssertEqual(QueueLab.smallestElement(queue), -33, "smallest should be -33")
  }
  
  
}
