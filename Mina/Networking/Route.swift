//
//  Route.swift
//  Mina
//
//  Created by mohsen on 05/01/2022.
//

import Foundation
import SwiftUI
enum Route{
    static let baseUrl = "https://ewanapp.com/mena/api/clients"
    case home
    var description : String{
        switch self {
        case .home:return "/home"
        }
    }
}

