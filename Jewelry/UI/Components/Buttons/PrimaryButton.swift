//
//  PrimaryButton.swift
//  Jewelry
//
//  Created by John Harold Rasco on 6/15/22.
//

import SwiftUI

struct PrimaryButton: View {
  let title: String
  @Binding var isDisabled: Bool
  let action: () -> Void

  init(
    title: String,
    isDisabled: Binding<Bool> = .constant(false),
    action: @escaping () -> Void) {
      self.title = title
      self._isDisabled = isDisabled
      self.action = action
  }

  var body: some View {
    Button(action: action) {
      Text(title)
        .font(R.font.brilliantCutProB7Bold, size: 12.0)
        .frame(maxWidth: .infinity)
        .padding(22.0)
        .background(isDisabled ? .clear : Color(R.color.monza))
        .foregroundColor(Color(R.color.white))
        .border(Color(R.color.white), width: isDisabled ? 1.0 : 0.0)
    }
    .disabled(isDisabled)
    .opacity(isDisabled ? 0.3 : 1.0)
  }
}

struct PrimaryButton_Previews: PreviewProvider {
  static var previews: some View {
    VStack {
      PrimaryButton(title: "Button", action: { })
      PrimaryButton(title: "Button", isDisabled: .constant(true), action: { })
    }
    .background(Color(R.color.codGray))
  }
}

