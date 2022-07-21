//
//  BriefingWelcomeView.swift
//  Jewelry
//
//  Created by John Harold Rasco on 7/20/22.
//

import SwiftUI

struct BriefingWelcomeView: View {
  var body: some View {
    HStack {
      VStack(alignment: .leading, spacing: 9.0) {
        Text("Monday, Nov 18, 2019")
          .font(R.font.brilliantCutProB7Regular, size: 11.0)

        Text("Bonjour,\nHarold!")
          .font(R.font.brilliantCutProB7Medium, size: 28.0)
      }
      .foregroundColor(Color(R.color.codGray))
      Spacer()
    }
    .padding(.top, 10.0)
    .padding(.horizontal, 32.0)
    .padding(.bottom, 24.0)
  }
}

struct BriefingWelcomeView_Previews: PreviewProvider {
  static var previews: some View {
    BriefingWelcomeView()
  }
}
