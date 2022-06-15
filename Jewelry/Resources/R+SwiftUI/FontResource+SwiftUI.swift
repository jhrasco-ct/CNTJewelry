//
//  FontResource+SwiftUI.swift
//  Jewelry
//
//  Created by John Harold Rasco on 6/15/22.
//

import SwiftUI
import Rswift

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension Font {
  static func custom(_ fontResource: FontResource, size: CGFloat) -> Font {
    .custom(fontResource.fontName, size: size)
  }
}

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension FontResource {
  func swiftUI(size: CGFloat) -> Font {
    .custom(self, size: size)
  }
}

struct CustomFontModifier: ViewModifier {
  let resource: FontResource
  let size: CGFloat

  func body(content: Content) -> some View {
    content
      .font(.custom(resource, size: size))
  }
}

extension View {
  func font(_ resource: FontResource, size: CGFloat) -> some View {
    modifier(CustomFontModifier(resource: resource, size: size))
  }
}
