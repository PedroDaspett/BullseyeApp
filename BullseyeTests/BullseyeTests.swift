  //
  //  BullseyeTests.swift
  //  BullseyeTests
  //
  //  Created by Pedro Couventaris Daspett on 08/03/22.
  //

import XCTest
@testable import Bullseye

class BullseyeTests: XCTestCase {
  
  var game: Game!
  
  override func setUpWithError() throws {
      // Put setup code here. This method is called before the invocation of each test method in the class.
    game = Game()
  }
  
  override func tearDownWithError() throws {
      // Put teardown code here. This method is called after the invocation of each test method in the class.
    game = nil
  }
  
  func testExample() throws {
      // This is an example of a functional test case.
      // Use XCTAssert and related functions to verify your tests produce the correct results.
      // Any test you write for XCTest can be annotated as throws and async.
      // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
      // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    XCTAssertEqual(game.points(sliderValue: 50), 999)
  }
  
  
}
