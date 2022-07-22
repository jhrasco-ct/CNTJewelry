//
//  BriefArticleCardView.swift
//  Jewelry
//
//  Created by John Harold Rasco on 7/22/22.
//

import SwiftUI

struct BriefArticleCardView: View {
  var body: some View {
    BriefArticleContentView(
      image: Image(R.image.sampleImage2),
      eyebrow: "EYEBROW",
      title: "BIBENDUM VEHICULA ETIAM EGESTAS AMET",
      date: .init())
      .padding([.top, .horizontal], 32.0)
  }
}

struct BriefArticleCardView_Previews: PreviewProvider {
  static var previews: some View {
    BriefArticleCardView()
  }
}
