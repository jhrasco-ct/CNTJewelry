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
    /*
     The list of countries (Loadable<[Country]>) used to be stored here.
     It was removed for performing countries' search by name inside a database,
     which made the resulting variable used locally by just one screen (CountriesList)
     Otherwise, the list of countries could have remained here, available for the entire app.
     */
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

