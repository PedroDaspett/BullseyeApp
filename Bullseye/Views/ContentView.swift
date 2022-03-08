  //
  //  ContentView.swift
  //  Bullseye
  //
  //  Created by Pedro Couventaris Daspett on 03/03/22.
  //

import SwiftUI

struct ContentView: View {
  
  @State private var alertIsVisible : Bool = false
  @State private var sliderValue : Double = 50.0
  @State private var game: Game = Game()
  
  var body: some View {
    VStack {
      Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
        .bold()
        .kerning(2.0)
        .multilineTextAlignment(.center)
        .lineSpacing(4.0)
        .font(.footnote)
      Text(String(game.target))
        .kerning(-1.0)
        .fontWeight(.black)
        .font(.largeTitle)
      HStack{
        Text("1")
          .bold()
        Slider(value: self.$sliderValue, in: 1.0...100.0)
        Text("100")
          .bold()
      }
      Button(action: {
        self.alertIsVisible = true
      }) {
        Text("Hit me!")
      }
      .alert("Hello there!", isPresented: $alertIsVisible) {
        Button("Awesome!") { }
      } message: {
        var roundedValue: Int = Int(self.sliderValue
                                      .rounded())
        Text("The slider's value is \(roundedValue)\n" + "You scored \(self.game.points(sliderValue: roundedValue)) points this round.")
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
    ContentView()
      .previewLayout(.fixed(width: 568, height: 320))
  }
}
