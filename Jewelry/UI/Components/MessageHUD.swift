//
//  MessageHUD.swift
//  Jewelry
//
//  Created by John Harold Rasco on 7/13/22.
//

import SwiftUI

struct MessageHUD: View {
  enum HUDType {
    case error
  }

  var type = HUDType.error
  let message: String

  var body: some View {
    HStack(spacing: 18.0) {
      type.icon
        .renderingMode(.template)
        .resizable()
        .frame(width: 20.0, height: 20.0)

      Text(message)
        .font(R.font.fancyCutProB7Regular, size: 16.0)

      Spacer()
    }
    .padding(.horizontal, 32.0)
    .padding(.vertical, 25)
    .foregroundColor(Color(R.color.white))
    .background(Color(R.color.monza))
  }
}

private extension MessageHUD.HUDType {
  var icon: Image {
    switch self {
    case .error:
      return Image(R.image.circularExclamation)
    }
  }
}

struct MessageHUD_Previews: PreviewProvider {
  static var previews: some View {
    GeometryReader { _ in

    }
    .overlay(
      MessageHUD(message: "Incorrect username and password.\nPlease try again."),
      alignment: .top)
  }
}

