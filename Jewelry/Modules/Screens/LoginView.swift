//
//  LoginView.swift
//  Jewelry
//
//  Created by John Harold Rasco on 6/24/22.
//

import Combine
import SwiftUI

struct LoginView: View {
  @Environment(\.injected) private var injected: DIContainer
  @Environment(\.presentationMode) var presentationMode

  var body: some View {
    ZStack(alignment: .top) {
      LoginContainerView {
        Text("WELCOME")
          .font(R.font.brilliantCutProB7Medium, size: 22.0)
          .padding(.horizontal, 29.0)

        Text("Please enter your login details below:")
          .font(R.font.fancyCutProB7Regular, size: 16.0)
          .padding(.horizontal, 32.0)
          .padding(.top, 13.0)

        Spacer()
          .frame(height: 56.0)

        Group {
          PrimaryButton(title: "LOG IN") { }
        }
        .padding(.horizontal, 32.0)
      }

      HStack {
        BackButton {
          presentationMode.wrappedValue.dismiss()
        }
        Spacer()
      }
      .padding(.leading, 36.0)
    }
    .navigationBarHidden(true)
  }
}

// MARK: - Preview

struct LoginView_Previews: PreviewProvider {
  static var previews: some View {
    LoginView()
  }
}

