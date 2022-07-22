//
//  FrameSizeModifier.swift
//  Jewelry
//
//  Created by John Harold Rasco on 7/21/22.
//

import SwiftUI

struct FrameSizeSizeModifier: ViewModifier {
  let action: (CGSize) -> Void

  func body(content: Content) -> some View {
    content
      .background(
        GeometryReader { geometry in
          Color.clear
            .onAppear {
              action(geometry.size)
            }
        }
      )
  }
}

extension View {
  func onUpdateFrameSize(perform action: @escaping (CGSize) -> Void) -> some View {
    modifier(FrameSizeSizeModifier(action: action))
  }
}
