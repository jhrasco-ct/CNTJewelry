//
//  LoginContainerView.swift
//  Jewelry
//
//  Created by John Harold Rasco on 6/15/22.
//

import SwiftUI

struct LoginContainerView<Content>: View where Content: View {
  let content: (GeometryProxy) -> Content

  init(@ViewBuilder content: @escaping (GeometryProxy) -> Content) {
    self.content = content
  }

  var body: some View {
    GeometryReader { proxy in
      Image(R.image.backgroundTexture1)
        .resizable()
        .scaledToFill()
        .ignoresSafeArea()
        .frame(height: proxy.size.height * 0.66)

      VStack(alignment: .leading, spacing: .zero) {
        ZStack(alignment: .leading) {
          Image(R.image.polygon)

          Text("CNT\nJEWELRY")
            .font(R.font.brilliantCutProB7Medium, size: 35.0)
            .padding(.leading, 32.0)
        }

        Spacer()

        content(proxy)
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
    LoginContainerView { _ in }
  }
}

