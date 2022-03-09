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
    ZStack {
      Color("BackgroundColor")
        .edgesIgnoringSafeArea(.all)
      VStack {
        Text("🎯🎯🎯\nPut the bullseye as close as you can to".uppercased())
          .bold()
          .kerning(2.0)
          .multilineTextAlignment(.center)
          .lineSpacing(4.0)
          .font(.footnote)
          .foregroundColor(Color("TextColor"))
        Text(String(game.target))
          .kerning(-1.0)
          .fontWeight(.black)
          .font(.largeTitle)
          .foregroundColor(Color("TextColor"))
        HStack{
          Text("1")
            .bold()
            .foregroundColor(Color("TextColor"))
          Slider(value: $sliderValue, in: 1.0...100.0)
          Text("100")
            .bold()
            .foregroundColor(Color("TextColor"))
        }
        .padding()
        Button(action: {alertIsVisible = true}) {
          Text("Hit me!".uppercased())
            .bold()
        }
        .padding(20.0)
        .background(
          ZStack {
            Color("ButtonColor")
            LinearGradient(
              gradient: Gradient(
                colors: [Color.white.opacity(0.3), Color.clear]),
              startPoint: .top, endPoint: .bottom)
        })
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
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
    ContentView()
      .previewLayout(.fixed(width: 568, height: 320))
    ContentView()
      .preferredColorScheme(.dark)
    ContentView()
      .preferredColorScheme(.dark)
      .previewLayout(.fixed(width: 568, height: 320))
  }
}
