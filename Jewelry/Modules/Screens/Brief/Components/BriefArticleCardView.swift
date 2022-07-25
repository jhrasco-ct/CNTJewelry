//
//  BriefArticleCardView.swift
//  Jewelry
//
//  Created by John Harold Rasco on 7/22/22.
//

import SwiftUI

struct BriefArticleCardView: View {
  let image: Image?
  let eyebrow: String
  let title: String
  var description: String?
  let date: Date

  var body: some View {
    BriefArticleContentView(
      image: image,
      eyebrow: eyebrow,
      title: title,
      description: description,
      date: date)
    .padding([.top, .horizontal], 32.0)
  }
}

struct BriefArticleCardView_Previews: PreviewProvider {
  static var previews: some View {
    BriefArticleCardView(
      image: Image(R.image.sampleImage2),
      eyebrow: "EYEBROW",
      title: "BIBENDUM VEHICULA ETIAM EGESTAS AMET",
      description: nil,
      date: .init())
  }
}
