//
//  Binding+.swift
//  Jewelry
//
//  Created by John Harold Rasco on 6/27/22.
//

import SwiftUI

extension Binding where Value == Bool {
  func not() -> Binding<Value> {
    Binding<Value>(
      get: { !self.wrappedValue },
      set: { self.wrappedValue = !$0 }
    )
  }
}
