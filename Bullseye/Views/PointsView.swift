  //
  //  PointsView.swift
  //  Bullseye
  //
  //  Created by Pedro Couventaris Daspett on 18/03/22.
  //

import SwiftUI

struct PointsView: View {
  
  var body: some View {
    VStack (spacing: 10) {
      InstructionText(text: "The slider's value is")
      BigNumberText(text: "89")
      BodyTextView(text: "You scored 200 Points\n🎉🎉🎉")
      Button () {
        ButtonTextView(text: "Start New Round")
      }
    }
    .padding()
    .frame(maxWidth: 300)
    .background(Color("BackgroundColor"))
    .cornerRadius(21.0)
    .shadow(radius: 10, x: 5, y: 5)
  }
}

struct PointsView_Previews: PreviewProvider {
  static var previews: some View {
    PointsView()
    PointsView()
    PointsView()
      .previewLayout(.fixed(width: 568, height: 320))
    PointsView()
      .preferredColorScheme(.dark)
    PointsView()
      .preferredColorScheme(.dark)
      .previewLayout(.fixed(width: 568, height: 320))
  }
}
