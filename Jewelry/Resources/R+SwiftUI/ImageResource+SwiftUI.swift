//
//  ImageResource+SwiftUI.swift
//  Jewelry
//
//  Created by John Harold Rasco on 6/15/22.
//

import SwiftUI
import Rswift

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Image {
  init(_ imageResource: ImageResource) {
    self = Image(imageResource.name, bundle: imageResource.bundle)
  }
}

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ImageResource {
  var swiftUI: Image {
    Image(self)
  }
}
