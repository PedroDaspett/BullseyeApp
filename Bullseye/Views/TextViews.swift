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

struct BodyTextView: View {
  var text: String
  
  var body: some View {
    Text(text)
      .fontWeight(.semibold)
      .font(.subheadline)
      .multilineTextAlignment(.center)
      .lineSpacing(12.0)
  }
}

struct ButtonTextView: View {
  var text: String
  
  var body: some View {
    Text(text)
      .bold()
      .font(.headline)
      .padding()
      .frame(maxWidth: .infinity)
      .background(
        Color.accentColor
      )
      .cornerRadius(12.0)
      .foregroundColor(.white)
  }
}

struct ScoreTextView: View {
  var score: Int
  
  var body: some View {
    Text(String(score))
      .font(.title3)
      .bold()
      .foregroundColor(Color("TextColor"))
      .kerning(-0.2)
  }
}

struct DateTextView: View {
  var date: Date
  
  var body: some View {
    Text(date, style: .time)
      .font(.title3)
      .bold()
      .foregroundColor(Color("TextColor"))
      .kerning(-0.2)
  }
}

struct BigBoldTextView: View {
  var text: String
  
  var body: some View {
    Text(text.uppercased())
      .kerning(2.0)
      .font(.title)
      .foregroundColor(Color("TextColor"))
      .fontWeight(.black)
  }
}


struct TextViews_Previews: PreviewProvider {
  static var previews: some View {
    VStack{
      InstructionText(text: "Instructions")
      BigNumberText(text: "999")
      SliderLabelText(text: "99")
      LabelTextView(text: "Score")
      BodyTextView(text: "You scored 200 points!\n🎉🎉🎉")
      ButtonTextView(text: "Start New Round")
      ScoreTextView(score: 459)
      DateTextView(date: Date())
      BigBoldTextView(text: "Leaderboard")
    }
    .padding()
  }
}
