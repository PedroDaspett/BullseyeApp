  //
  //  RoundViews.swift
  //  Bullseye
  //
  //  Created by Pedro Couventaris Daspett on 09/03/22.
  //

import SwiftUI

struct RoundedImageViewStroked: View {
  var systemName: String
  
  var body: some View {
    Image(systemName: systemName)
      .font(.title)
      .foregroundColor(Color("TextColor"))
      .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
      .overlay(
        Circle()
          .strokeBorder(Color("ButtonStrokeColor"), lineWidth: Constants.General.strokeWidth)
      )
  }
}

struct RoundedImageViewFilled: View {
  var systemName: String
  
  var body: some View {
    Image(systemName: systemName)
      .font(.title)
      .foregroundColor(Color("ButtonFilledTextColor"))
      .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
      .background(
        Circle()
          .fill(
            Color("ButtonFilledBackgroundColor")
          )
      )
  }
}

struct RoundedRectTextView: View {
  var text: String
  
  var body: some View {
    Text(text)
      .bold()
      .kerning(-0.2)
      .foregroundColor(Color("TextColor"))
      .font(.title3)
      .frame(width: Constants.General.roundRectViewWidth, height: Constants.General.roundRectViewHeight)
      .overlay(
        RoundedRectangle(cornerRadius: Constants.General.roundRectCornerRadius)
          .stroke(lineWidth: Constants.General.strokeWidth)
          .foregroundColor(Color("ButtonStrokeColor"))
      )
  }
}

struct PreviewView: View {
  var body: some View {
    HStack {
      VStack(spacing: 10) {
        RoundedImageViewStroked(systemName: "arrow.counterclockwise")
        RoundedImageViewStroked(systemName: "list.dash")
        RoundedRectTextView(text: "100")
      }
      VStack(spacing: 10) {
        RoundedImageViewFilled(systemName: "arrow.counterclockwise")
        RoundedImageViewFilled(systemName: "list.dash")
      }
    }
  }
}

struct RoundViews_Previews: PreviewProvider {
  static var previews: some View {
    PreviewView()
    PreviewView()
      .preferredColorScheme(.dark)
  }
}
