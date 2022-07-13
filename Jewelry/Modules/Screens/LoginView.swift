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
    GeometryReader { proxy in
      ScrollView(showsIndicators: false) {
        GeometryReader { _ in
          LoginContainerView(proxy: proxy) {
            Spacer()
              .frame(height: proxy.size.height * 0.14)

            Text("WELCOME")
              .font(R.font.brilliantCutProB7Medium, size: 22.0)
              .padding(.horizontal, 29.0)

            Text("Please enter your login details below:")
              .font(R.font.fancyCutProB7Regular, size: 16.0)
              .padding(.horizontal, 32.0)
              .padding(.top, 13.0)

            Spacer()
              .frame(height: proxy.size.height * 0.02)

            Group {
              FloatingTextField(placeholder: "EMAIL", text: $email, hasError: hasError)
                .keyboardType(.emailAddress)
                .submitLabel(.next)
                .onSubmit {
                  passwordFocused = true
                }

              Spacer()
                .frame(height: 28.0)

              FloatingTextField(placeholder: "PASSWORD", text: $password, hasError: hasError, isSecured: true)
                .focused($passwordFocused)
                .submitLabel(.done)

              Spacer(minLength: 30.0 + proxy.size.height * 0.02)

              PrimaryButton(title: "LOG IN", isDisabled: canSubmit.not()) { }
            }
            .padding(.horizontal, 32.0)
          }

          backButton
        }
        .frame(height: proxy.size.height)
      }
      .padding(.bottom, keyboardHeight)
    }
    .onReceive(keyboardHeightUpdate) { height in
      withAnimation {
        self.keyboardHeight = height
      }
    }
    .background(Color(R.color.codGray))
    .ignoresSafeArea(.keyboard)
    .navigationBarHidden(true)
  }

  // MARK: - Private

  @FocusState private var passwordFocused: Bool

  @State private var email = String()
  @State private var password = String()
  @State private var errorMessage = String()
  @State private var keyboardHeight = 0.0

  private var backButton: some View {
    HStack {
      BackButton {
        presentationMode.wrappedValue.dismiss()
      }
      Spacer()
    }
    .padding(.leading, 36.0)
    .padding(.top, 10.0)
  }

  private var hasError: Binding<Bool> {
    .constant(!errorMessage.isEmpty)
  }

  private var canSubmit: Binding<Bool> {
    .constant(
      !email.isEmpty &&
      !password.isEmpty &&
      errorMessage.isEmpty)
  }
}

// MARK: - State Updates

extension LoginView {
  var keyboardHeightUpdate: AnyPublisher<CGFloat, Never> {
    injected.appState.updates(for: \.system.keyboardHeight)
  }
}

// MARK: - Preview

struct LoginView_Previews: PreviewProvider {
  static var previews: some View {
    LoginView()
  }
}
