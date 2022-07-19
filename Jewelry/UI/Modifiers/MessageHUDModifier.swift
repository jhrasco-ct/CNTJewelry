//
//  MessageHUDModifier.swift
//  Jewelry
//
//  Created by John Harold Rasco on 7/13/22.
//

import SwiftUI

struct MessageHUDModifier: ViewModifier {
  @Binding var isPresented: Bool
  var type = MessageHUD.HUDType.error
  let message: String

  func body(content: Content) -> some View {
    content
      .overlay(messageHUD, alignment: .top)
      .onChange(of: isPresented) { isPresented in
        withAnimation {
          isShown = isPresented
        }
      }
  }

  // MARK: - Private

  @State private var isShown = false

  @ViewBuilder
  private var messageHUD: some View {
    let hud = MessageHUD(type: type, message: message)
      .transition(.opacity.combined(with: .move(edge: .top)))

    if isShown {
      hud
    } else {
      hud.hidden()
    }
  }
}

extension View {
  func messageHUD(
    isPresented: Binding<Bool>,
    type: MessageHUD.HUDType = .error,
    message: String) -> some View {
      modifier(MessageHUDModifier(
        isPresented: isPresented,
        type: type,
        message: message))
    }
}
