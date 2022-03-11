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
  var target = Int.random(in: 1...100)
  
  func points(sliderValue: Int) -> Int {
    let difference = abs(sliderValue - self.target)
    let bonus: Int
    if (difference == 0) {
      bonus = 100
    } else if (difference <= 2) {
      bonus = 50
    } else {
      bonus = 0
    }
    return 100 - difference + bonus
  }
  
  mutating func startNewRound(points: Int) {
    score += points
    round += 1
    target = Int.random(in: 1...100)
  }
  
  mutating func restart() {
    score = 0
    round = 1
    target = Int.random(in: 1...100)
  }
}
