//
//  ServicesContainer.swift
//  Jewelry
//
//  Created by John Harold Rasco on 6/16/22.
//

import Foundation

extension DIContainer {
  struct Services {
    let localAuthenticationService: LocalAuthenticationService

    static var stub: Self {
      .init(localAuthenticationService: StubLocalAuthenticationService())
    }
  }
}
