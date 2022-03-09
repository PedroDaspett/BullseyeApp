  //
  //  Shapes.swift
  //  Bullseye
  //
  //  Created by Pedro Couventaris Daspett on 09/03/22.
  //

import SwiftUI

struct Shapes: View {
  var body: some View {
    VStack{
      Circle()
        .strokeBorder(Color.blue, lineWidth: 20.0)
        .frame(width: 200, height: 100)
      RoundedRectangle(cornerRadius: 20.0)
        .fill(Color.red)
        .frame(width: 200, height: 100)
      Capsule()
        .strokeBorder(Color.blue, lineWidth: 20.0)
        .frame(width: 200, height: 100)
      Ellipse()
        .fill(Color.yellow)
        .frame(width: 200, height: 100)
    }
    .background(Color.green)
  }
}

struct Shapes_Previews: PreviewProvider {
  static var previews: some View {
    Shapes()
  }
}
