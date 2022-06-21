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
      let environment = AppEnvironment.bootstrap()
      ContentView(container: environment.container)
    }
  }

  // MARK: - Private

  private func configureLogger() {
    #if DEBUG
    Logger.configure()
    #endif
  }
}

