//
//  BriefTakeawayCardView.swift
//  Jewelry
//
//  Created by John Harold Rasco on 7/25/22.
//

import SwiftUI

struct BriefTakeawayCardView: View {
  let image: Image?
  let eyebrow: String
  let title: String
  let description: String?
  let date: Date

  var body: some View {
    VStack(spacing: .zero) {
      VStack(spacing: .zero) {
        imageView

        VStack(alignment: .leading, spacing: .zero) {
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

          footerView
        }
        .padding(24.0)
      }
      .overlay(Image(R.image.octagonOutline))

      Spacer(minLength: 24.0)

      DashLine()
        .foregroundColor(Color(R.color.moonMist))
    }
    .padding([.top, .horizontal], 32.0)
    .foregroundColor(Color(R.color.codGray))
    .fixedSize(horizontal: false, vertical: true)
  }

  @ViewBuilder
  private var imageView: some View {
    if let image = image {
      ZStack {
        Color(R.color.codGray)
          .padding(.leading, 24.0)
          .padding(.vertical, 40.0)

        VStack(spacing: .zero) {
        image
          .resizable()
          .scaledToFit()
          .padding(.horizontal, 40.0)

        Spacer(minLength: 16.0)
        }
      }
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
        .font(R.font.fancyCutProB7Regular, size: 16.0)
        .lineSpacing(3)
    }
  }

  private var footerView: some View {
    VStack(alignment: .leading, spacing: 3.0) {
      Text(date.relativeStringFormat().uppercased())
        .font(R.font.fancyCutProB7Bold, size: 12.0)

      Text("**Jane Doe**, Lorem Ispum Role")
        .font(R.font.fancyCutProB7Regular, size: 12.0)

      Text("5th Avenue Mansion")
        .font(R.font.fancyCutProB7Bold, size: 12.0)
    }
  }
}

struct BriefTakeawayCardView_Previews: PreviewProvider {
  static var previews: some View {
    GeometryReader { _ in
      ScrollView(showsIndicators: false) {
        VStack(spacing: .zero) {
      BriefTakeawayCardView(
        image: Image(R.image.sampleRing),
        eyebrow: "TAKEAWAY",
        title: "CONGRATULATE MARIA",
        description: "Its five-year mission: to explore strange new worlds, to seek out new life and new civilizations, to boldly go where no man has gone before. Its five-year mission: to explore strange new worlds again.",
        date: .init().addingTimeInterval(-360000))
        }
      }
    }
  }
}
