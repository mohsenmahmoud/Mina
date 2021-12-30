//
//  String+Extention.swift
//  Mina
//
//  Created by mohsen on 29/12/2021.
//

import Foundation
extension String{
    var asUrl: URL?{
        return URL(string: self)
    }
}
