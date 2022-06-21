//
//  Logger.swift
//  Jewelry
//
//  Created by John Harold Rasco on 6/20/22.
//

import SwiftyBeaver

let log = SwiftyBeaver.self

struct Logger {

  static func configure(minLevel: SwiftyBeaver.Level = .verbose) {
    let console = ConsoleDestination()
    console.levelColor.verbose = "💜"
    console.levelColor.debug = "💚"
    console.levelColor.info = "💙"
    console.levelColor.warning = "💛"
    console.levelColor.error = "❤️"
    console.format = "$C $M $C"
    console.minLevel = minLevel

    log.addDestination(console)
  }

}
