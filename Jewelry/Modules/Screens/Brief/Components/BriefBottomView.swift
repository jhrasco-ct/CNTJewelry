//
//  BriefBottomView.swift
//  Jewelry
//
//  Created by John Harold Rasco on 7/19/22.
//

import SwiftUI

struct BriefBottomView: View {
  var body: some View {
    HStack(
      alignment: .center,
      spacing: 16.0) {
        Spacer()
        starButton
        eyeButton
        bookButton
        plusButton
        Spacer()
      }
      .padding(.top, 34.0)
      .padding(.bottom, 16.0)
      .background(
        LinearGradient(
          gradient: Gradient(colors: [.clear, Color(R.color.codGray).opacity(0.2)]),
          startPoint: .top,
          endPoint: .bottom)
      )
  }

  private var starButton: some View {
    Button {

    } label: {
      HStack(spacing: 6.0) {
        Image(R.image.star)
          .resizable()
          .renderingMode(.template)
          .scaledToFit()
          .frame(width: 20.0)

        Text("À LA UNE")
          .font(R.font.brilliantCutProB7Bold, size: 10.0)
      }
      .foregroundColor(Color(R.color.codGray))
      .padding(.vertical, 10.0)
      .padding(.horizontal, 32.0)
      .background(Color(R.color.white))
      .clipShape(RoundedRectangle(cornerRadius: 18.0))
      .overlay(
        RoundedRectangle(cornerRadius: 18.0)
          .stroke(Color(R.color.limedOak), lineWidth: 1.0)
      )
    }
  }

  private var eyeButton: some View {
    CircularButton(image: Image(R.image.eye)) {

    }
  }

  private var bookButton: some View {
    CircularButton(image: Image(R.image.book)) {

    }
  }

  private var plusButton: some View {
    CircularButton(
      image: Image(R.image.plus),
      backgroundColor: Color(R.color.limedOak)) {
    }
  }
}

struct BriefingBottomView_Previews: PreviewProvider {
  static var previews: some View {
    BriefBottomView()
  }
}
