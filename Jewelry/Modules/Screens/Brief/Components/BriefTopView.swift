//
//  BriefTopView.swift
//  Jewelry
//
//  Created by John Harold Rasco on 7/20/22.
//

import SwiftUI

struct BriefTopView: View {
  var body: some View {
    VStack(spacing: 16.0) {
      HStack(spacing: 16.0) {
        logo
        Spacer()
        magnifierButton
        personButton
      }
      lineView
    }
    .padding(.horizontal, 32.0)
    .padding(.vertical, 16.0)
  }

  private var logo: some View {
    VStack {
      Text("CNT")
        .font(R.font.brilliantCutProB7Medium, size: 28.0)

      Text("JEWELRY")
        .tracking(2)
        .font(R.font.brilliantCutProB7Regular, size: 11.0)
    }
    .foregroundColor(Color(R.color.codGray))
  }

  private var magnifierButton: some View {
    Button {

    } label: {
      Image(R.image.magnifier)
        .resizable()
        .frame(width: 32.0, height: 32.0)
    }
  }

  private var personButton: some View {
    Button {

    } label: {
      Image(R.image.person)
        .resizable()
        .frame(width: 32.0, height: 32.0)
    }
  }

  private var lineView: some View {
    DashLine()
      .foregroundColor(Color(R.color.codGray))
  }
}

struct BriefingTopView_Previews: PreviewProvider {
  static var previews: some View {
    BriefTopView()
  }
}
