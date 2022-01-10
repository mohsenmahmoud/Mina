//
//  Helper.swift
//  Mina
//
//  Created by mohsen on 03/01/2022.
//

import Foundation
import UIKit

struct Helper {
    
  // static var token : String?
    
    
    

    static func saveToken (token: String) {
        UserDefaults.standard.set(token, forKey: "token")
    }

    static func getToken () -> String? {
        return UserDefaults.standard.string(forKey: "token")
    }
}


class B : UIViewController {
   let token = Helper.getToken() ?? ""

    func cc () {
        if Helper.getToken() != nil {
            // Home
            //prepare(for: "goHome", sender: self)
            let vc = storyboard?.instantiateViewController(withIdentifier: "HomeViewController")
            present(vc!, animated: true, completion: nil)

        }else{
            // Auth
        }
    }
    
    


}
    

