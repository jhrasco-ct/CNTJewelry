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

          BriefArticleCardView(
            image: Image(R.image.sampleImage2),
            eyebrow: "EYEBROW",
            title: "BIBENDUM VEHICULA ETIAM EGESTAS AMET",
            date: .init())

          BriefTakeawayCardView(
            image: Image(R.image.sampleRing),
            eyebrow: "TAKEAWAY",
            title: "CONGRATULATE MARIA",
            description: "Its five-year mission: to explore strange new worlds, to seek out new life and new civilizations, to boldly go where no man has gone before. Its five-year mission: to explore strange new worlds again.",
            date: .init().addingTimeInterval(-360000))

          Group {
            BriefArticleCardView(
              image: Image(R.image.sampleImage3),
              eyebrow: "EYEBROW",
              title: "BIBENDUM VEHICULA ETIAM EGESTAS AMET",
              date: .init())

            BriefArticleCardView(
              image: Image(R.image.sampleImage4),
              eyebrow: "PANTHERE",
              title: "THE HISTORY OF THE CARTIER PANTHÈRE BRACELET",
              date: .init())

            BriefArticleCardView(
              image: Image(R.image.sampleImage6),
              eyebrow: "EVENT",
              title: "NEW BAIGNOIRE COLLECTION",
              date: .init())

            BriefArticleCardView(
              image: Image(R.image.sampleImage5),
              eyebrow: "EYEBROW",
              title: "BIBENDUM VEHICULA ETIAM EGESTAS AMET",
              date: .init())

            BriefArticleCardView(
              image: nil,
              eyebrow: "BEST PRACTICE",
              title: "DUIS ET JUSTO TINCIDUNT",
              description: "Nam ultrices dictum nunc at tempus. Praesent bibendum tellus tellus, quis fringilla quam convallis sed lorem ipsum longer sentence bla bla something else.",
              date: .init())
          }
        }
        .padding(.bottom, 100.0)
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
