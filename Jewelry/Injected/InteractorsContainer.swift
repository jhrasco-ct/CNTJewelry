//
//  InteractorsContainer.swift
//  Jewelry
//
//  Created by John Harold Rasco on 6/21/22.
//

extension DIContainer {
  struct Interactors {
    let localAuthenticationInteractor: LocalAuthenticationInteractor

    static var stub: Self {
      .init(localAuthenticationInteractor: StubLocalAuthenticationInteractor())
    }
  }
}
