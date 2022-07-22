//
//  BriefArticleContentView.swift
//  Jewelry
//
//  Created by John Harold Rasco on 7/22/22.
//

import SwiftUI

struct BriefArticleContentView: View {
  let image: Image
  let eyebrow: String
  let title: String
  let date: Date

  var body: some View {
    VStack(alignment: .leading, spacing: .zero) {
      image
        .resizable()
        .scaledToFit()

      Spacer(minLength: 16.0)

      Text(eyebrow)
        .font(R.font.brilliantCutProB7Bold, size: 11.0)

      Spacer(minLength: 11.0)

      HStack(alignment: .top) {
        Text(title)
          .font(R.font.brilliantCutProB7Medium, size: 22.0)

        Spacer()

        bookmarkButton
      }

      Spacer(minLength: 19.0)

      Text("MAR. 1, 2020")
        .font(R.font.fancyCutProB7Bold, size: 12.0)

      Spacer(minLength: 24.0)

      separatorView
    }
    .foregroundColor(Color(R.color.codGray))
    .fixedSize(horizontal: false, vertical: true)
  }

  private var bookmarkButton: some View {
    Button {

    } label: {
      Image(R.image.bookmark)
        .resizable()
        .scaledToFit()
        .frame(width: 24.0)
    }
  }

  private var separatorView: some View {
    Line()
      .stroke(
        style: StrokeStyle(
          lineWidth: 2.0,
          lineCap: .round,
          lineJoin: .round,
          dash: [0.08, 4.0])
      )
      .foregroundColor(Color(R.color.moonMist))
      .frame(height: 1.0)
      .offset(y: -1.0)
  }
}

struct BriefArticleContentView_Previews: PreviewProvider {
  static var previews: some View {
    BriefArticleContentView(
      image: Image(R.image.sampleImage1),
      eyebrow: "EVENT",
      title: "NEW BAIGNOIRE COLLECTION",
      date: .init())
  }
}
