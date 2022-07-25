//
//  BriefItem.swift
//  Jewelry
//
//  Created by John Harold Rasco on 7/25/22.
//

import Foundation

struct BriefItem: Decodable {
  var type: ContentType?
  var content: Content
}

extension BriefItem {
  enum ContentType: String, Decodable {
    case salesTrackerCard = "brief_sales_tracker_card"
    case articleHeader = "brief_article_header"
    case articleCard = "article_card"
    case briefArticleCard = "brief_article_card"
    case takeawayCard = "brief_takeaway_card"
    case articleCarousel = "brief_article_carousel"
  }
}

extension BriefItem {
  struct Content: Decodable {
    var title: String?
    var eyebrow: String?
    var dek: String?
    var timestamp: String
    var author: Author?
  }
}

extension BriefItem {
  struct Author: Decodable {
    var firstName: String
    var lastName: String
    var jobTitle: String?
    var location: String?
  }
}
