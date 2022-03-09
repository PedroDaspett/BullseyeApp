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
      .frame(width: 56.0, height: 56.0)
      .overlay(
        Circle()
          .strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2.0)
      )
    
  }
}

struct RoundedImageViewFilled: View {
  var systemName: String
  
  var body: some View {
    Image(systemName: systemName)
      .font(.title)
      .foregroundColor(Color("ButtonFilledTextColor"))
      .frame(width: 56.0, height: 56.0)
      .background(
        Circle()
          .fill(
            Color("ButtonFilledBackgroundColor")
          )
      )
    
  }
}

struct PreviewView: View {
  var body: some View {
    HStack {
      VStack(spacing: 10) {
        RoundedImageViewStroked(systemName: "arrow.counterclockwise")
        RoundedImageViewStroked(systemName: "list.dash")
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
