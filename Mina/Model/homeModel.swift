// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome
//struct homeModel: Codable {
//    let data: DataClass?
//    let status: Bool?
//    let code: Int?
//    let successMessage: String?
//    let errorMessage, validationMessage, apiToken: JSONNull?
//
//
//// MARK: - DataClass
//struct DataClasss: Codable {
//    let user: User?
//    let sliders: [Category]?
//    let products: [Product]?
//    let category: [Category]?
//}
//
//// MARK: - Category
//struct Category: Codable {
//    let id: Int
//    let name: String
//    let image: String
//    let link: JSONNull?
//}
//
//// MARK: - Product
//struct Product: Codable {
//    let id: Int
//    let title, price, status, createdAt: String
//    let userID: String
//    let countSaled: Int
//    let productImage: String
//    let isFav: Bool
//    let user: User
//
//
//}
//
//// MARK: - User
//struct User: Codable {
//    let id: Int
//    let name: String
//    let email: String?
//    let phone: String
//    let image: String?
//    //let lang: Lang?
//    let admin: String
//}
//
//}


 
struct HomeModel :Codable{
    
    let data: Data?
    let status : Bool?
    let code : Int?
    let successMessage : String?
    let errorMessage, validationMessage, apiToken: JSONNulls?
}

//struct Data: Codable {
//    let user: User
//    let sliders: [Category]
//    let products: [products]
//    let category: [Category]
//}


struct User :Codable{
    let id : Int?
    let name : String?
    let email : String?
    let phone : String?
    let image : String?
    let lang : Lang?
    let admin : String?
}

enum Lang: String, Codable {
    case ar = "ar"
    case arUSQ10 = "ar-US;q=1.0"
}

 



struct sliders : Codable{
    let id : Int?
    let name : String?
    let image : String?
    let link : String?
}
struct products :Codable {
    let id: Int
      let title, price, status, createdAt: String
      let userID: String
      let countSaled: Int
      let productImage: String
      let isFav: Bool
      let user: User
    
    enum CodingKeys: String, CodingKey {
        case id, title, price, status
        case createdAt = "created_at"
        case userID = "user_id"
        case countSaled, productImage, isFav, user
    }
}
struct category :Codable{
    let id : Int?
    let name :String?
    let image : String?
}





class JSONNulls: Codable, Hashable {
    static func == (lhs: JSONNulls, rhs: JSONNulls) -> Bool {
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

