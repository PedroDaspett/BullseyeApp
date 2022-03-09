  //
  //  Game.swift
  //  Bullseye
  //
  //  Created by Pedro Couventaris Daspett on 08/03/22.
  //

import Foundation

struct Game {
  var round = 1
  var score = 0
  var target = Int.random(in: 1..<100)
  
  func points(sliderValue: Int) -> Int {
    100 - abs(sliderValue - target)
  }
}
