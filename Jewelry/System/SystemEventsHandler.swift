//
//  SystemEventsHandler.swift
//  Jewelry
//
//  Created by John Harold Rasco on 6/16/22.
//

import UIKit
import Combine

protocol SystemEventsHandler {

}

struct RealSystemEventsHandler: SystemEventsHandler {
  let container: DIContainer
  private var cancelBag = CancelBag()

  init(container: DIContainer) {
    self.container = container

    installKeyboardHeightObserver()
  }

  private func installKeyboardHeightObserver() {
    let appState = container.appState
    NotificationCenter.default.keyboardHeightPublisher
      .sink { [appState] height in
        appState[\.system.keyboardHeight] = height
      }
      .store(in: cancelBag)
  }
}

// MARK: - Notifications

private extension NotificationCenter {
  var keyboardHeightPublisher: AnyPublisher<CGFloat, Never> {
    let willShow = publisher(for: UIApplication.keyboardWillShowNotification)
      .map { $0.keyboardHeight }
    let willHide = publisher(for: UIApplication.keyboardWillHideNotification)
      .map { _ in CGFloat(0) }
    return Publishers.Merge(willShow, willHide)
      .eraseToAnyPublisher()
  }
}

private extension Notification {
  var keyboardHeight: CGFloat {
    (userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?
      .cgRectValue.height ?? 0
  }
}
