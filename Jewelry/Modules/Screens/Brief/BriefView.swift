//
//  BriefView.swift
//  Jewelry
//
//  Created by John Harold Rasco on 7/19/22.
//

import SwiftUI

struct BriefView: View {
  var body: some View {
    GeometryReader { _ in
      ScrollView(showsIndicators: false) {
        VStack(spacing: .zero) {
          BriefTopView()
          BriefWelcomeView()
          BriefSalesTrackerView()
          BriefArticleHeaderView()
          BriefArticleCardView()
        }
      }
      bottomView
    }
    .background(Color(R.color.white))
  }

  private var bottomView: some View {
    VStack {
      Spacer()
      BriefBottomView()
    }
  }
}

struct BriefingView_Previews: PreviewProvider {
  static var previews: some View {
    BriefView()
  }
}
