//
//  JewelryApp.swift
//  Jewelry
//
//  Created by John Harold Rasco on 6/14/22.
//

import SwiftUI

@main
struct JewelryApp: App {
  init() {
    configureLogger()
  }

  var body: some Scene {
    WindowGroup {
      ContentView(container: environment.container)
    }
  }

  // MARK: - Private

  private let environment = AppEnvironment.bootstrap()

  private func configureLogger() {
    #if DEBUG
    Logger.configure()
    #endif
  }
}

