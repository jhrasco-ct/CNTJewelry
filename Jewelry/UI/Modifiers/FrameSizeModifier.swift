//
//  FrameSizeModifier.swift
//  Jewelry
//
//  Created by John Harold Rasco on 7/21/22.
//

import SwiftUI

struct FrameSizeSizeModifier: ViewModifier {
  struct SizePreferenceKey: PreferenceKey {
    static var defaultValue = CGSize.zero

    static func reduce(value: inout CGSize, nextValue: () -> CGSize) {
      value = nextValue()
    }
  }

  func body(content: Content) -> some View {
    content
      .background(
        GeometryReader { geometry in
          Color.clear
            .preference(key: SizePreferenceKey.self, value: geometry.size)
        }
      )
  }
}

extension View {
  func onUpdateFrameSize(perform action: @escaping (CGSize) -> Void) -> some View {
    modifier(FrameSizeSizeModifier())
      .onPreferenceChange(FrameSizeSizeModifier.SizePreferenceKey.self, perform: action)
  }
}
