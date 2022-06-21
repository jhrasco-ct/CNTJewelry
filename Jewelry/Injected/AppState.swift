//
//  AppState.swift
//  Jewelry
//
//  Created by John Harold Rasco on 6/16/22.
//

import SwiftUI
import Combine

struct AppState: Equatable {
  var userData = UserData()
  var routing = ViewRouting()
  var system = System()
}

extension AppState {
  struct UserData: Equatable {
    var isAuthenticated = false
  }
}

extension AppState {
  struct ViewRouting: Equatable {
  }
}

extension AppState {
  struct System: Equatable {
    var isActive: Bool = false
    var keyboardHeight: CGFloat = 0
  }
}

func == (lhs: AppState, rhs: AppState) -> Bool {
  lhs.userData == rhs.userData &&
  lhs.routing == rhs.routing &&
  lhs.system == rhs.system
}

#if DEBUG
extension AppState {
  static var preview: AppState {
    var state = AppState()
    state.system.isActive = true
    return state
  }
}
#endif

