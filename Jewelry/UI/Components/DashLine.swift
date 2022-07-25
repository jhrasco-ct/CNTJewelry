//
//  DashLine.swift
//  Jewelry
//
//  Created by John Harold Rasco on 7/25/22.
//

import SwiftUI

struct DashLine: View {
  var body: some View {
    Line()
      .stroke(
        style: StrokeStyle(
          lineWidth: 2.0,
          lineCap: .round,
          lineJoin: .round,
          dash: [0.08, 4.0])
      )
      .frame(height: 1.0)
      .offset(y: -1.0)
  }
}

struct DashLine_Previews: PreviewProvider {
  static var previews: some View {
    DashLine()
  }
}
