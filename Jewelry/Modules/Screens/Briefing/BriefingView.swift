//
//  BriefingView.swift
//  Jewelry
//
//  Created by John Harold Rasco on 7/19/22.
//

import SwiftUI

struct BriefingView: View {
  var body: some View {
    GeometryReader { _ in
      ScrollView(showsIndicators: false) {
        VStack(spacing: .zero) {
          BriefingTopView()
          BriefingWelcomeView()
          BriefingBotiqueView()
        }
      }
      bottomView
    }
    .background(Color(R.color.white))
  }

  private var bottomView: some View {
    VStack {
      Spacer()
      BriefingBottomView()
    }
  }
}

struct BriefingView_Previews: PreviewProvider {
  static var previews: some View {
    BriefingView()
  }
}
