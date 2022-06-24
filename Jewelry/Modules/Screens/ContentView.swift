//
//  ContentView.swift
//  Jewelry
//
//  Created by John Harold Rasco on 6/14/22.
//

import Combine
import SwiftUI

struct ContentView: View {
  init(container: DIContainer) {
    self.container = container
  }

  var body: some View {
    Group {
      if isAuthenticated {
        OnboardingView()
          .inject(container)
      } else {
        PreLoginView()
          .inject(container)
      }
    }
    .onReceive(isAuthenticatedUpdate) {
      isAuthenticated = $0
    }
  }

  // MARK: - Private

  private let container: DIContainer

  @State private var isAuthenticated = false
}

// MARK: - State Updates

private extension ContentView {
  var isAuthenticatedUpdate: AnyPublisher<Bool, Never> {
    container.appState.updates(for: \.userData.isAuthenticated)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(container: .preview)
  }
}


