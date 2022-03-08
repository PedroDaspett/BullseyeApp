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
    let difference: Int = abs(sliderValue - self.target)
      // difference = difference * -1
      // or difference *= -1
      // or difference = -difference
    let awardedPoints: Int = 100 - difference
    return awardedPoints
  }
}
