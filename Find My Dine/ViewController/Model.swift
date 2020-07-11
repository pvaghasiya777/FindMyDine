//
//  Model.swift
//  Find My Dine
//
//  Created by Captain on 10/07/20.
//  Copyright © 2020 Captain. All rights reserved.
//

import Foundation
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome
class Welcome: Codable {
    let restaurant: Restaurant

    init(restaurant: Restaurant) {
        self.restaurant = restaurant
    }
}

// MARK: - Restaurant
class Restaurant: Codable {
    let r: R
    let apikey, id, name: String
    let url: String
    let location: Location
    let switchToOrderMenu: Int
    let cuisines, timings: String
    let averageCostForTwo, priceRange: Int
    let currency: String
    let highlights: [String]
    let offers: [JSONAny]
    let opentableSupport, isZomatoBookRes: Int
    let mezzoProvider: String
    let isBookFormWebView: Int
    let bookFormWebViewURL, bookAgainURL, thumb: String
    let userRating: UserRating
    let allReviewsCount: Int
    let photosURL: String
    let photoCount: Int
    let menuURL: String
    let featuredImage: String
    let hasOnlineDelivery, isDeliveringNow: Int
    let storeType: String
    let includeBogoOffers: Bool
    let deeplink: String
    let isTableReservationSupported, hasTableBooking: Int
    let eventsURL: String
    let phoneNumbers: String
    let allReviews: AllReviews
    let establishment: [String]
    let establishmentTypes: [JSONAny]

    enum CodingKeys: String, CodingKey {
        case r = "R"
        case apikey, id, name, url, location
        case switchToOrderMenu = "switch_to_order_menu"
        case cuisines, timings
        case averageCostForTwo = "average_cost_for_two"
        case priceRange = "price_range"
        case currency, highlights, offers
        case opentableSupport = "opentable_support"
        case isZomatoBookRes = "is_zomato_book_res"
        case mezzoProvider = "mezzo_provider"
        case isBookFormWebView = "is_book_form_web_view"
        case bookFormWebViewURL = "book_form_web_view_url"
        case bookAgainURL = "book_again_url"
        case thumb
        case userRating = "user_rating"
        case allReviewsCount = "all_reviews_count"
        case photosURL = "photos_url"
        case photoCount = "photo_count"
        case menuURL = "menu_url"
        case featuredImage = "featured_image"
        case hasOnlineDelivery = "has_online_delivery"
        case isDeliveringNow = "is_delivering_now"
        case storeType = "store_type"
        case includeBogoOffers = "include_bogo_offers"
        case deeplink
        case isTableReservationSupported = "is_table_reservation_supported"
        case hasTableBooking = "has_table_booking"
        case eventsURL = "events_url"
        case phoneNumbers = "phone_numbers"
        case allReviews = "all_reviews"
        case establishment
        case establishmentTypes = "establishment_types"
    }

    init(r: R, apikey: String, id: String, name: String, url: String, location: Location, switchToOrderMenu: Int, cuisines: String, timings: String, averageCostForTwo: Int, priceRange: Int, currency: String, highlights: [String], offers: [JSONAny], opentableSupport: Int, isZomatoBookRes: Int, mezzoProvider: String, isBookFormWebView: Int, bookFormWebViewURL: String, bookAgainURL: String, thumb: String, userRating: UserRating, allReviewsCount: Int, photosURL: String, photoCount: Int, menuURL: String, featuredImage: String, hasOnlineDelivery: Int, isDeliveringNow: Int, storeType: String, includeBogoOffers: Bool, deeplink: String, isTableReservationSupported: Int, hasTableBooking: Int, eventsURL: String, phoneNumbers: String, allReviews: AllReviews, establishment: [String], establishmentTypes: [JSONAny]) {
        self.r = r
        self.apikey = apikey
        self.id = id
        self.name = name
        self.url = url
        self.location = location
        self.switchToOrderMenu = switchToOrderMenu
        self.cuisines = cuisines
        self.timings = timings
        self.averageCostForTwo = averageCostForTwo
        self.priceRange = priceRange
        self.currency = currency
        self.highlights = highlights
        self.offers = offers
        self.opentableSupport = opentableSupport
        self.isZomatoBookRes = isZomatoBookRes
        self.mezzoProvider = mezzoProvider
        self.isBookFormWebView = isBookFormWebView
        self.bookFormWebViewURL = bookFormWebViewURL
        self.bookAgainURL = bookAgainURL
        self.thumb = thumb
        self.userRating = userRating
        self.allReviewsCount = allReviewsCount
        self.photosURL = photosURL
        self.photoCount = photoCount
        self.menuURL = menuURL
        self.featuredImage = featuredImage
        self.hasOnlineDelivery = hasOnlineDelivery
        self.isDeliveringNow = isDeliveringNow
        self.storeType = storeType
        self.includeBogoOffers = includeBogoOffers
        self.deeplink = deeplink
        self.isTableReservationSupported = isTableReservationSupported
        self.hasTableBooking = hasTableBooking
        self.eventsURL = eventsURL
        self.phoneNumbers = phoneNumbers
        self.allReviews = allReviews
        self.establishment = establishment
        self.establishmentTypes = establishmentTypes
    }
}

// MARK: - AllReviews
class AllReviews: Codable {
    let reviews: [Review]

    init(reviews: [Review]) {
        self.reviews = reviews
    }
}

// MARK: - Review
class Review: Codable {
    let review: [JSONAny]

    init(review: [JSONAny]) {
        self.review = review
    }
}

// MARK: - Location
class Location: Codable {
    let address, locality, city: String
    let cityID: Int
    let latitude, longitude, zipcode: String
    let countryID: Int
    let localityVerbose: String

    enum CodingKeys: String, CodingKey {
        case address, locality, city
        case cityID = "city_id"
        case latitude, longitude, zipcode
        case countryID = "country_id"
        case localityVerbose = "locality_verbose"
    }

    init(address: String, locality: String, city: String, cityID: Int, latitude: String, longitude: String, zipcode: String, countryID: Int, localityVerbose: String) {
        self.address = address
        self.locality = locality
        self.city = city
        self.cityID = cityID
        self.latitude = latitude
        self.longitude = longitude
        self.zipcode = zipcode
        self.countryID = countryID
        self.localityVerbose = localityVerbose
    }
}

// MARK: - R
class R: Codable {
    let hasMenuStatus: HasMenuStatus
    let resID: Int
    let isGroceryStore: Bool

    enum CodingKeys: String, CodingKey {
        case hasMenuStatus = "has_menu_status"
        case resID = "res_id"
        case isGroceryStore = "is_grocery_store"
    }

    init(hasMenuStatus: HasMenuStatus, resID: Int, isGroceryStore: Bool) {
        self.hasMenuStatus = hasMenuStatus
        self.resID = resID
        self.isGroceryStore = isGroceryStore
    }
}

// MARK: - HasMenuStatus
class HasMenuStatus: Codable {
    let delivery, takeaway: Int

    init(delivery: Int, takeaway: Int) {
        self.delivery = delivery
        self.takeaway = takeaway
    }
}

// MARK: - UserRating
class UserRating: Codable {
    let aggregateRating, ratingText, ratingColor: String
    let ratingObj: RatingObj
    let votes: Int

    enum CodingKeys: String, CodingKey {
        case aggregateRating = "aggregate_rating"
        case ratingText = "rating_text"
        case ratingColor = "rating_color"
        case ratingObj = "rating_obj"
        case votes
    }

    init(aggregateRating: String, ratingText: String, ratingColor: String, ratingObj: RatingObj, votes: Int) {
        self.aggregateRating = aggregateRating
        self.ratingText = ratingText
        self.ratingColor = ratingColor
        self.ratingObj = ratingObj
        self.votes = votes
    }
}

// MARK: - RatingObj
class RatingObj: Codable {
    let title: Title
    let bgColor: BgColor

    enum CodingKeys: String, CodingKey {
        case title
        case bgColor = "bg_color"
    }

    init(title: Title, bgColor: BgColor) {
        self.title = title
        self.bgColor = bgColor
    }
}

// MARK: - BgColor
class BgColor: Codable {
    let type, tint: String

    init(type: String, tint: String) {
        self.type = type
        self.tint = tint
    }
}

// MARK: - Title
class Title: Codable {
    let text: String

    init(text: String) {
        self.text = text
    }
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

class JSONCodingKey: CodingKey {
    let key: String

    required init?(intValue: Int) {
        return nil
    }

    required init?(stringValue: String) {
        key = stringValue
    }

    var intValue: Int? {
        return nil
    }

    var stringValue: String {
        return key
    }
}

class JSONAny: Codable {

    let value: Any

    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny.self, context)
    }

    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
        return EncodingError.invalidValue(value, context)
    }

    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if container.decodeNil() {
            return JSONNull()
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if let value = try? container.decodeNil() {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
        if let value = try? container.decode(Bool.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Int64.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Double.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(String.self, forKey: key) {
            return value
        }
        if let value = try? container.decodeNil(forKey: key) {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
        var arr: [Any] = []
        while !container.isAtEnd {
            let value = try decode(from: &container)
            arr.append(value)
        }
        return arr
    }

    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
        var dict = [String: Any]()
        for key in container.allKeys {
            let value = try decode(from: &container, forKey: key)
            dict[key.stringValue] = value
        }
        return dict
    }

    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
        for value in array {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
        if let value = value as? Bool {
            try container.encode(value)
        } else if let value = value as? Int64 {
            try container.encode(value)
        } else if let value = value as? Double {
            try container.encode(value)
        } else if let value = value as? String {
            try container.encode(value)
        } else if value is JSONNull {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }

    public required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            self.value = try JSONAny.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
            self.value = try JSONAny.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            self.value = try JSONAny.decode(from: container)
        }
    }

    public func encode(to encoder: Encoder) throws {
        if let arr = self.value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny.encode(to: &container, array: arr)
        } else if let dict = self.value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey.self)
            try JSONAny.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny.encode(to: &container, value: self.value)
        }
    }
}

