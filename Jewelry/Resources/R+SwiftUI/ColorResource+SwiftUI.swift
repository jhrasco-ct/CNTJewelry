//
//  ColorResource+SwiftUI.swift
//  Jewelry
//
//  Created by John Harold Rasco on 6/15/22.
//

import SwiftUI
import Rswift

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Color {
  init(_ colorResource: ColorResource) {
    self = Color(colorResource.name, bundle: colorResource.bundle)
  }
}

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ColorResource {
  var swiftUI: Color {
    Color(self)
  }
}
