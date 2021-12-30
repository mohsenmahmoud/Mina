//
//  verifyCode.swift
//  Mina
//
//  Created by mohsen on 28/12/2021.
//

import Foundation


// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)
 

// MARK: - Welcome
struct VerifyCode: Codable {
    let data: DataClass?
    let status: Bool?
    let code: Int?
    let successMessage: String?
    let errorMessage, validationMessage: JSONNull?
    let apiToken: String?

    enum CodingKeys: String, CodingKey {
        case data, status, code, successMessage, errorMessage, validationMessage
        case apiToken = "api_token"
    }
}

 

 

// MARK: - Encode/decode helpers

 
