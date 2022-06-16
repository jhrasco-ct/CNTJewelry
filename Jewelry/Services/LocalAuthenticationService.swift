//
//  LocalAuthenticationService.swift
//  Jewelry
//
//  Created by John Harold Rasco on 6/16/22.
//

import LocalAuthentication

protocol LocalAuthenticationService {
  func hasBiometrics() -> Bool
  func authenticate()
}

// MARK: - RealUserPermissionsService

final class RealLocalAuthenticationService: LocalAuthenticationService {
  private let context = LAContext()
  private let policy = LAPolicy.deviceOwnerAuthenticationWithBiometrics

  func hasBiometrics() -> Bool {
    context.canEvaluatePolicy(policy, error: nil)
  }

  func authenticate() {
    guard hasBiometrics() else {
      return
    }
    context.evaluatePolicy(policy, localizedReason: "Authentication required!") { isSuccessful, error in
      if isSuccessful {
        // authenticated successfully
      } else {
        // there was a problem
      }
    }
  }
}

// MARK: - StubLocalAuthenticationService

final class StubLocalAuthenticationService: LocalAuthenticationService {
  func hasBiometrics() -> Bool {
    false
  }

  func authenticate() { }
}
