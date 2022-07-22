//
//  AppEnvironment.swift
//  Jewelry
//
//  Created by John Harold Rasco on 6/16/22.
//

import Foundation

struct AppEnvironment {
  let container: DIContainer
  let systemEventsHandler: SystemEventsHandler
}

extension AppEnvironment {
  static func bootstrap() -> AppEnvironment {
    let appState = Store<AppState>(AppState(userData: .init(isAuthenticated: true)))
    let interactors = configuredInteractors(appState: appState)
    let diContainer = DIContainer(appState: appState, interactors: interactors)
    let systemEventsHandler = RealSystemEventsHandler(container: diContainer)
    return AppEnvironment(container: diContainer, systemEventsHandler: systemEventsHandler)
  }

  private static func configuredInteractors(appState: Store<AppState>) -> DIContainer.Interactors {
    let localAuthenticationInteractor = RealLocalAuthenticationInteractor(appState: appState)
    return .init(localAuthenticationInteractor: localAuthenticationInteractor)
  }
}
