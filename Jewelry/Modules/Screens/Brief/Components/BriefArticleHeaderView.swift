//
//  BriefArticleHeaderView.swift
//  Jewelry
//
//  Created by John Harold Rasco on 7/22/22.
//

import SwiftUI

struct BriefArticleHeaderView: View {
  @State var contentHeight = CGFloat.zero
  @State var viewHeight = CGFloat.zero

  var body: some View {
    GeometryReader { proxy in
      ZStack(alignment: .topTrailing) {
        backgroundView(
          proxy: proxy,
          preferredHeight: contentHeight)

        VStack(spacing: .zero) {
          titleView(proxy: proxy)

          Spacer(minLength: 24.0)

          BriefArticleContentView(
            image: Image(R.image.sampleImage1),
            eyebrow: "EVENT",
            title: "NEW BAIGNOIRE COLLECTION",
            date: .init())
        }
        .padding([.top, .horizontal], 32.0)
        .onUpdateFrameSize {
          contentHeight = $0.height
        }
      }
      .onUpdateFrameSize {
        viewHeight = $0.height
      }
    }
    .frame(height: viewHeight)
    .padding(.top, 22.0)
  }

  // MARK: - Private

  private enum Constant {
    static let octagonWidthRatio = 0.85
    static let octagonXOffset = 30.0
  }

  private func titleView(proxy: GeometryProxy) -> some View {
    HStack {
      Spacer(minLength: proxy.size.width * (1.0 - Constant.octagonWidthRatio) + Constant.octagonXOffset + 32.0)

      Text("THIS WEEK AROUND CNT")
        .font(R.font.fancyCutCondProB7Bold, size: 30.0)
        .foregroundColor(Color(R.color.white))
    }
    .fixedSize(horizontal: false, vertical: true)
  }

  private func backgroundView(proxy: GeometryProxy, preferredHeight: CGFloat) -> some View {
    Image(R.image.octagon)
      .renderingMode(.template)
      .foregroundColor(Color(R.color.monza))
      .frame(
        width: proxy.size.width * Constant.octagonWidthRatio,
        height: preferredHeight * 0.4)
      .offset(x: Constant.octagonXOffset)
  }
}

struct BriefArticleHeaderView_Previews: PreviewProvider {
  static var previews: some View {
    GeometryReader { _ in
      ScrollView(showsIndicators: false) {
        VStack(spacing: .zero) {
          BriefArticleHeaderView()
        }
      }
    }
  }
}
