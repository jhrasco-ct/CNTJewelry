//
//  DependencyInjector.swift
//  Jewelry
//
//  Created by John Harold Rasco on 6/16/22.
//

import SwiftUI
import Combine

struct DIContainer {
  let appState: Store<AppState>
  let services: Services
}

#if DEBUG
extension DIContainer {
  static var preview: Self {
    .init(appState: Store(.preview), services: .stub)
  }
}
#endif
