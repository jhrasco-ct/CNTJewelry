//
//  Date+.swift
//  Jewelry
//
//  Created by John Harold Rasco on 7/25/22.
//

import Foundation

enum DateFormatStyle: String {
  case monthDayYear = "MMM d, yyyy"
}

extension Date {
  func string(withStyle style: DateFormatStyle,
              timeZone: TimeZone = .current,
              locale: Locale = .current) -> String {
    string(withFormat: style.rawValue, timeZone: timeZone, locale: locale)
  }

  func relativeStringFormat(locale: Locale = .current) -> String {
    let dateFormatter = RelativeDateTimeFormatter()
    dateFormatter.unitsStyle = .abbreviated
    dateFormatter.locale = locale
    return dateFormatter.localizedString(for: self, relativeTo: .now)
  }

  func string(withFormat format: String,
              timeZone: TimeZone = .current,
              locale: Locale = .current) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = format
    dateFormatter.timeZone = timeZone
    dateFormatter.locale = locale
    return dateFormatter.string(from: self)
  }
}

extension String {
  func date(withStyle style: DateFormatStyle,
            timeZone: TimeZone? = .current,
            locale: Locale = .current) -> Date? {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = style.rawValue
    dateFormatter.timeZone = timeZone
    dateFormatter.locale = locale
    return dateFormatter.date(from: self)
  }
}
