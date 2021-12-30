//
//  loginNumber.swift
//  Mina
//
//  Created by mohsen on 27/12/2021.
//

import Foundation
// MARK: - Welcome
struct LoginNumber: Codable {
    let data: DataClass?
    let status: Bool?
    let code: Int?
    let successMessage: String?
    let errorMessage, validationMessage, apiToken: String?

    enum CodingKeys: String, CodingKey {
        case data, status, code, successMessage, errorMessage, validationMessage
        case apiToken = "api_token"
    }
}

// MARK: - DataClass
struct DataClass: Codable {
    let code: Int?
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





