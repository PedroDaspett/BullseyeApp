  //
  //  ContentView.swift
  //  Bullseye
  //
  //  Created by Pedro Couventaris Daspett on 03/03/22.
  //

import SwiftUI

struct ContentView: View {
  
  @State private var alertIsVisible = false
  @State private var sliderValue = 50.0
  @State private var game = Game()
  
  var body: some View {
    VStack {
      Text("🎯🎯🎯\nPut the bullseye as close as you can to".uppercased())
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
        Slider(value: $sliderValue, in: 1.0...100.0)
          .padding(12.0)
        Text("100")
          .bold()
      }
      Button(action: {alertIsVisible = true}) {
        Text("Hit me!".uppercased())
      }
      .padding(20.0)
      .background(Color.blue)
      .foregroundColor(.white)
      .cornerRadius(21.0)
      .alert("Hello there!", isPresented: $alertIsVisible) {
        Button("Awesome!") { }
      } message: {
        let roundedValue: Int = Int(sliderValue
                                      .rounded())
        Text("The slider's value is \(roundedValue)\n" + "You scored \(game.points(sliderValue: roundedValue)) points this round.")
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
