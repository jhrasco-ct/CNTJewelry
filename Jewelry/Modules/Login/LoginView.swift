//
//  LoginView.swift
//  Jewelry
//
//  Created by John Harold Rasco on 6/14/22.
//

import SwiftUI

struct LoginView: View {
  var body: some View {
    LoginContainerView {
        Text("WELCOME")
          .font(R.font.brilliantCutProB7Medium, size: 22.0)
          .padding(.horizontal, 29.0)

        Text("Please select how you wish to log in:")
          .font(R.font.fancyCutProB7Regular, size: 16.0)
          .padding(.horizontal, 32.0)
          .padding(.top, 13.0)

        Spacer()
          .frame(height: 56.0)

        Group {
          PrimaryButton(title: "ATLAS LOGIN", action: {

          })

          Spacer()
            .frame(height: 24.0)

          PrimaryButton(title: "FACE/TOUCH ID LOGIN", action: {

          })
        }
        .padding(.horizontal, 32.0)
    }
  }
}

struct LoginView_Previews: PreviewProvider {
  static var previews: some View {
    LoginView()
  }
}


