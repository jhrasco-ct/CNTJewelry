//
//  PrimaryButton.swift
//  Jewelry
//
//  Created by John Harold Rasco on 6/15/22.
//

import SwiftUI

struct PrimaryButton: View {
  let title: String
  let action: () -> Void

  var body: some View {
    Button(action: action, label: {
      Text(title)
        .font(R.font.brilliantCutProB7Bold, size: 12.0)
        .frame(maxWidth: .infinity)
        .padding(22.0)
        .background(Color(R.color.monza))
    })
  }
}

struct PrimaryButton_Previews: PreviewProvider {
  static var previews: some View {
    PrimaryButton(title: "Button", action: { })
  }
}

