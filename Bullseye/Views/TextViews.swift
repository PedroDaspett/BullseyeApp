  //
  //  TextViews.swift
  //  Bullseye
  //
  //  Created by Pedro Couventaris Daspett on 09/03/22.
  //

import SwiftUI

struct InstructionText: View {
  var text: String
  var body: some View {
    Text(text.uppercased())
      .bold()
      .kerning(2.0)
      .multilineTextAlignment(.center)
      .lineSpacing(4.0)
      .font(.footnote)
      .foregroundColor(Color("TextColor"))
  }
}

struct BigNumberText: View {
  var text: String
  var body: some View{
    Text(text)
      .kerning(-1.0)
      .fontWeight(.black)
      .font(.largeTitle)
      .foregroundColor(Color("TextColor"))
  }
}

struct SliderLabelText: View {
  var text: String
  
  var body: some View {
    Text(text)
      .bold()
      .foregroundColor(Color("TextColor"))
      .frame(width: 30.0)
  }
}

struct LabelTextView: View {
  var text: String
  
  var body: some View {
    Text(text.uppercased())
      .bold()
      .kerning(1.5)
      .multilineTextAlignment(.center)
      .font(.caption)
      .foregroundColor(Color("TextColor"))
  }
}

struct TextViews_Previews: PreviewProvider {
  static var previews: some View {
    VStack{
      InstructionText(text: "Instructions")
      BigNumberText(text: "999")
      SliderLabelText(text: "99")
      LabelTextView(text: "Score")
    }
  }
}
