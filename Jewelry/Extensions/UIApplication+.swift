//
//  UIApplication+.swift
//  Jewelry
//
//  Created by John Harold Rasco on 7/13/22.
//

import UIKit

extension UIApplication {
  var keyWindow: UIWindow? {
    UIApplication.shared.connectedScenes
      .flatMap { ($0 as? UIWindowScene)?.windows ?? [] }
      .first { $0.isKeyWindow }
  }
}
