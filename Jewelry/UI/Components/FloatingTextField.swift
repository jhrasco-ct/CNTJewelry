//
//  FloatingTextField.swift
//  Jewelry
//
//  Created by John Harold Rasco on 6/27/22.
//

import SwiftUI

struct FloatingTextField: View {
  let placeholder: String
  @Binding var text: String
  @Binding var hasError: Bool
  var isSecured = false
  var foregroundColor = Color(R.color.white)
  var errorColor = Color(R.color.monza)

  var body: some View {
    VStack(alignment: .leading, spacing: .zero) {
      Text(text.isEmpty ? String() : placeholder)
        .font(R.font.brilliantCutProB7Bold, size: 11.0)

      Spacer(minLength: 7.0)

      HStack {
        textField

        if hasError {
          Image(R.image.circularExclamation)
            .resizable()
            .scaledToFit()
            .frame(width: 20.0, height: 20.0)
        }
      }

      Spacer(minLength: 8.0)

      underlineView
    }
    .frame(height: 51.0)
    .foregroundColor(hasError ? errorColor : foregroundColor)
  }

  // MARK: - Private

  private var textField: some View {
    ZStack(alignment: .leading) {
      if text.isEmpty {
        Text(placeholder)
          .font(R.font.brilliantCutProB7Bold, size: 11.0)
      }
      if isSecured {
        SecureField(String(), text: $text)
      } else {
        TextField(String(), text: $text)
      }
    }
    .font(R.font.fancyCutProB7Regular, size: 16.0)
  }

  @ViewBuilder
  private var underlineView: some View {
    if hasError {
      DashLine()
    } else {
      Rectangle()
        .frame(height: 1.0)
        .offset(y: -1.0)
    }
  }
}

struct FloatingTextField_Previews: PreviewProvider {
  static var previews: some View {
    VStack {
      FloatingTextField(placeholder: "EMAIL", text: .constant("Email"), hasError: .constant(true))

      FloatingTextField(placeholder: "EMAIL", text: .constant("Email"), hasError: .constant(false))
    }
    .background(.black)
  }
}

