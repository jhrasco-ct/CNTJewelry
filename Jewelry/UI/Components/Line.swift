//
//  Line.swift
//  Jewelry
//
//  Created by John Harold Rasco on 6/27/22.
//

import SwiftUI

struct Line: Shape {
  var axis = Axis.horizontal

  func path(in rect: CGRect) -> Path {
    var path = Path()
    path.move(to: .zero)
    if axis == .horizontal {
      path.addLine(to: CGPoint(x: rect.width, y: .zero))
    } else {
      path.addLine(to: CGPoint(x: .zero, y: rect.height))
    }
    return path
  }
}
