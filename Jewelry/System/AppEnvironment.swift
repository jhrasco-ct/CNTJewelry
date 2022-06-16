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
    let appState = Store<AppState>(AppState())
    let services = configuredServices()
    let diContainer = DIContainer(appState: appState, services: services)
    let systemEventsHandler = RealSystemEventsHandler(container: diContainer)
    return AppEnvironment(container: diContainer, systemEventsHandler: systemEventsHandler)
  }

  private static func configuredServices() -> DIContainer.Services {
    let localAuthenticationService = RealLocalAuthenticationService()
    return .init(localAuthenticationService: localAuthenticationService)
  }
}
