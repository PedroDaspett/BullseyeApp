  //
  //  LeaderboardView.swift
  //  Bullseye
  //
  //  Created by Pedro Couventaris Daspett on 17/04/22.
  //

import SwiftUI

struct LeaderboardView: View {
  var body: some View {
    ZStack {
      Color("BackgroundColor")
        .edgesIgnoringSafeArea(.all)
      VStack(spacing: 10) {
        HeaderView()
        LabelView()
        RowView(index: 1, score: 10, date: Date())
      }
    }
  }
}

struct RowView: View {
  let index: Int
  let score: Int
  let date: Date
  
  var body: some View {
    HStack {
        RoundedTextView(text: String(index))
      Spacer()
        ScoreTextView(score: score)
        .frame(width: Constants.Leaderboard.leaderboardScoreColWidth)
      Spacer()
        DateTextView(date: date)
        .frame(width: Constants.Leaderboard.leaderboardDateColWidth)
    }
    .background(
      RoundedRectangle(cornerRadius: .infinity)
        .strokeBorder(Color("LeaderboardRowColor"), lineWidth: Constants.General.strokeWidth)
    )
    .padding(.leading)
    .padding(.trailing)
    .frame(maxWidth: Constants.Leaderboard.leaderboardMaxRowWidth)
  }
}

struct HeaderView: View {
  @Environment(\.verticalSizeClass) var verticalSizeClass
  @Environment(\.horizontalSizeClass) var horizontalSizeClass
  
  var body: some View {
    ZStack {
      HStack {
        
        if verticalSizeClass == .regular && horizontalSizeClass == .compact {
          BigBoldTextView(text: "Leaderboard")
            .padding(.leading)
          Spacer()
        } else {
          BigBoldTextView(text: "Leaderboard")
        }
      }
      HStack {
        Spacer()
        Button(action: {}) {
        RoundedImageViewFilled(systemName: "xmark")
          .padding(.trailing)
        }
      }
    }
  }
}

struct LabelView: View {
  var body: some View {
    HStack {
      Spacer()
        .frame(width: Constants.General.roundedViewLength)
      Spacer()
      LabelTextView(text: "Score")
        .frame(width: Constants.Leaderboard.leaderboardScoreColWidth)
      Spacer()
      LabelTextView(text: "Date")
        .frame(width: Constants.Leaderboard.leaderboardDateColWidth)
    }
    
    .padding(.leading)
    .padding(.trailing)
    .frame(maxWidth: Constants.Leaderboard.leaderboardMaxRowWidth)
  }
}

struct LeaderboardView_Previews: PreviewProvider {
  static var previews: some View {
    LeaderboardView()
    LeaderboardView()
      .previewLayout(.fixed(width: 568, height: 320))
    LeaderboardView()
      .preferredColorScheme(.dark)
    LeaderboardView()
      .preferredColorScheme(.dark)
      .previewLayout(.fixed(width: 568, height: 320))
  }
}
