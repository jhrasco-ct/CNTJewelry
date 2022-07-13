//
//  LoginContainerView.swift
//  Jewelry
//
//  Created by John Harold Rasco on 6/15/22.
//

import SwiftUI

struct LoginContainerView<Content>: View where Content: View {
  let proxy: GeometryProxy
  let content: () -> Content

  init(proxy: GeometryProxy, @ViewBuilder content: @escaping () -> Content) {
    self.content = content
    self.proxy = proxy
  }

  var body: some View {
    ZStack(alignment: .top) {
      Image(R.image.backgroundTexture1)
        .resizable()
        .frame(height: proxy.size.height * 0.63)
        .aspectRatio(contentMode: .fit)
        .offset(y: -proxy.safeAreaInsets.top)

      VStack(alignment: .leading, spacing: .zero) {
        ZStack(alignment: .leading) {
          Image(R.image.polygon)

          Text("CNT\nJEWELRY")
            .font(R.font.brilliantCutProB7Medium, size: 35.0)
            .padding(.leading, 32.0)
        }

        Spacer()

        content()
      }
      .foregroundColor(Color(R.color.white))
      .padding(.vertical, 50.0)

      HStack {
        Spacer()
        Image(R.image.jewelryBox)
          .resizable()
          .scaledToFit()
          .frame(height: proxy.size.width * 0.78)
      }
      .padding(.top, 102)
    }
    .background(Color(R.color.codGray))
  }
}

struct LoginContainerView_Previews: PreviewProvider {
  static var previews: some View {
    GeometryReader {
      LoginContainerView(proxy: $0) { }
    }
  }
}

