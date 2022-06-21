//
//  LocalAuthenticationInteractor.swift
//  Jewelry
//
//  Created by John Harold Rasco on 6/21/22.
//

import LocalAuthentication

protocol LocalAuthenticationInteractor {
  func hasBiometrics() -> Bool
  func authenticate()
}

// MARK: - RealUserPermissionsService

final class RealLocalAuthenticationInteractor: LocalAuthenticationInteractor {
  init(appState: Store<AppState>) {
    self.appState = appState
  }

  func hasBiometrics() -> Bool {
    context.canEvaluatePolicy(policy, error: nil)
  }

  func authenticate() {
    guard hasBiometrics() else {
      return
    }
    context.evaluatePolicy(policy, localizedReason: "Authentication required!") { [weak self] isSuccessful, error in
      if isSuccessful {
        self?.appState[\.userData.isAuthenticated] = true
      } else if let error = error {
        log.error(error.localizedDescription)
      }
    }
  }

  // MARK: - Private

  private let appState: Store<AppState>
  private let context = LAContext()
  private let policy = LAPolicy.deviceOwnerAuthenticationWithBiometrics
}

// MARK: - StubLocalAuthenticationService

final class StubLocalAuthenticationInteractor: LocalAuthenticationInteractor {
  func hasBiometrics() -> Bool {
    false
  }

  func authenticate() { }
}
