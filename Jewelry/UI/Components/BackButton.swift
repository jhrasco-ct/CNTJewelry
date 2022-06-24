//
//  BackButton.swift
//  Jewelry
//
//  Created by John Harold Rasco on 6/24/22.
//

import SwiftUI

struct BackButton: View {
  let action: () -> Void

  var body: some View {
    Button(action: action) {
      Image(R.image.back)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 44.0)
    }
  }
}

struct BackButton_Previews: PreviewProvider {
  static var previews: some View {
    BackButton(action: { })
  }
}

