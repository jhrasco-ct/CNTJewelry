//
//  BriefArticleContentView.swift
//  Jewelry
//
//  Created by John Harold Rasco on 7/22/22.
//

import SwiftUI

struct BriefArticleContentView: View {
  let image: Image?
  let eyebrow: String
  let title: String
  let description: String?
  let date: Date

  var body: some View {
    VStack(alignment: .leading, spacing: .zero) {
      imageView

      Text(eyebrow)
        .font(R.font.brilliantCutProB7Bold, size: 11.0)

      Spacer(minLength: 11.0)

      HStack(alignment: .top) {
        Text(title)
          .font(R.font.brilliantCutProB7Medium, size: 22.0)

        Spacer(minLength: 50.0)

        bookmarkButton
      }

      descriptionView

      Spacer(minLength: 16.0)

      Text(date.string(withStyle: .monthDayYear).uppercased())
        .font(R.font.fancyCutProB7Bold, size: 12.0)

      Spacer(minLength: 24.0)

      DashLine()
        .foregroundColor(Color(R.color.moonMist))
    }
    .foregroundColor(Color(R.color.codGray))
    .fixedSize(horizontal: false, vertical: true)
  }

  @ViewBuilder
  private var imageView: some View {
    if let image = image {
      image
        .resizable()
        .scaledToFit()

      Spacer(minLength: 16.0)
    }
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

  @ViewBuilder
  private var descriptionView: some View {
    if let description = description {
      Spacer(minLength: 16.0)

      Text(description)
        .font(R.font.fancyCutProB7Light, size: 22.0)
    }
  }
}

struct BriefArticleContentView_Previews: PreviewProvider {
  static var previews: some View {
    BriefArticleContentView(
      image: Image(R.image.sampleImage1),
      eyebrow: "EVENT",
      title: "NEW BAIGNOIRE COLLECTION",
      description: "Nam ultrices dictum nunc at tempus. Praesent bibendum tellus tellus, quis fringilla quam convallis sed lorem ipsum longer sentence bla bla something else. ",
      date: .init())
  }
}
