//
//  BriefingBotiqueView.swift
//  Jewelry
//
//  Created by John Harold Rasco on 7/20/22.
//

import SwiftUI

struct BriefingBotiqueView: View {
  @State var contentHeight = CGFloat.zero

  var body: some View {
    GeometryReader { proxy in
      backgroundView(
        proxy: proxy,
        preferredHeight: contentHeight)

      VStack(spacing: .zero) {
        titleView(proxy: proxy)
          .padding(.leading, 32.0)

        Spacer(minLength: 24.0)

        HStack(spacing: 12.0) {
          pageView(proxy: proxy)
          pageView(proxy: proxy, isPlaceholder: true)
        }
        .padding(.leading, 32.0)
        .frame(width: proxy.size.width, alignment: .leading)
        .clipped()
      }
      .padding(.top, 32.0)
      .onUpdateFrameSize {
        contentHeight = $0.height
      }
    }
  }

  // MARK: - Private

  private enum Constant {
    static let octagonWidthRatio = 0.85
    static let octagonXOffset = -30.0
  }

  private func titleView(proxy: GeometryProxy) -> some View {
    HStack {
      Text("YOUR BOUTIQUE")
        .font(R.font.fancyCutCondProB7Bold, size: 30.0)
        .foregroundColor(Color(R.color.white))

      Spacer(minLength: proxy.size.width * (1.0 - Constant.octagonWidthRatio) - Constant.octagonXOffset + 32.0)
    }
    .fixedSize(horizontal: false, vertical: true)
  }

  private func backgroundView(proxy: GeometryProxy, preferredHeight: CGFloat) -> some View {
    VStack {
      Image(R.image.octagon)
        .renderingMode(.template)
        .foregroundColor(Color(R.color.monza))
        .frame(
          width: proxy.size.width * Constant.octagonWidthRatio,
          height: preferredHeight * 0.85)
        .offset(x: Constant.octagonXOffset)
    }
  }

  private func pageView(proxy: GeometryProxy, isPlaceholder: Bool = false) -> some View {
    ZStack {
      Color(R.color.codGray)

      VStack(spacing: .zero) {
        Image(R.image.ringTiger)
          .resizable()
          .scaledToFit()
          .frame(width: 74.0)

        Spacer(minLength: 20.0)

        Text("HERE ARE THE KEY THINGS YOU NEED TO KNOW TODAY!")
          .font(R.font.brilliantCutProB7Medium, size: 22.0)
          .multilineTextAlignment(.center)

        Spacer(minLength: 32.0)

        Line(axis: .vertical)
          .stroke(
            style: StrokeStyle(
              lineWidth: 2.0,
              lineCap: .round,
              lineJoin: .round,
              dash: [0.08, 4.0])
          )
          .foregroundColor(Color(R.color.limedOak))
          .frame(width: 2.0, height: 61.0)

        Spacer(minLength: 32.0)


        Text("SWIPE LEFT TO GET STARTED")
          .font(R.font.brilliantCutProB7Bold, size: 11.0)

        Spacer(minLength: 10.0)

        Image(R.image.tripleArrowLeft)
          .resizable()
          .scaledToFit()
          .frame(height: 12.0)
      }
      .foregroundColor(Color(R.color.white))
      .padding(.horizontal, 20.0)
      .padding(.vertical, 44.0)
      .frame(width: proxy.size.width * 0.8)
      .fixedSize(horizontal: false, vertical: true)
      .opacity(isPlaceholder ? 0.0 : 1.0)
    }
  }
}

struct BriefingBotiqueView_Previews: PreviewProvider {
  static var previews: some View {
    GeometryReader { _ in
      ScrollView(showsIndicators: false) {
        VStack(spacing: .zero) {
          BriefingBotiqueView()
        }
      }
    }
  }
}
