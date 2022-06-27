//
//  Line.swift
//  Jewelry
//
//  Created by John Harold Rasco on 6/27/22.
//

import SwiftUI

struct Line: Shape {
  func path(in rect: CGRect) -> Path {
    var path = Path()
    path.move(to: .zero)
    path.addLine(to: CGPoint(x: rect.width, y: .zero))
    return path
  }
}
