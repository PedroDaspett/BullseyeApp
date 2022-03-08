//
//  Game.swift
//  Bullseye
//
//  Created by Pedro Couventaris Daspett on 08/03/22.
//

import Foundation

struct Game {
  var round: Int = 1
  var score: Int = 0
  var target: Int = Int.random(in: 1...100)
  
  
  func points(sliderValue: Int) -> Int {
    var difference: Int
    if sliderValue > self.target {
      difference = sliderValue - self.target
    } else if sliderValue < self.target {
      difference = self.target - sliderValue
    } else {
      difference = 0
    }
    var awardedPoints: Int = 100 - difference
    return awardedPoints
  }
}
