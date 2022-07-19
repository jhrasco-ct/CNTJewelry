//
//  CircularButton.swift
//  Jewelry
//
//  Created by John Harold Rasco on 7/19/22.
//

import SwiftUI

struct CircularButton: View {
  let image: Image
  var backgroundColor = Color.black.opacity(0.9)
  var borderColor = Color(R.color.limedOak)
  let action: () -> Void

  var body: some View {
    Button(action: action) {
      image
        .resizable()
        .scaledToFit()
        .frame(width: 32.0)
        .padding(4.0)
        .background(backgroundColor)
        .clipShape(Circle())
        .overlay(
          Circle()
            .stroke(borderColor, lineWidth: 1.0)
        )
    }
  }
}

struct CircularButton_Previews: PreviewProvider {
  static var previews: some View {
    CircularButton(image: Image(R.image.eye), action: { })
  }
}
