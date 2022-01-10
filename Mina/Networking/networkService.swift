//
//  networkService.swift
//  Mina
//
//  Created by mohsen on 05/01/2022.
//

import Foundation
import Alamofire
//private func createRequste(route : Route) ->URLRequest?{
//    let UrlString = Route.baseUrl + route.description
//    guard let url = UrlString.asUrl else{return nil}
//    
//    let param = ["Accept-Language" : "Accept-Language---------" , "Authorization" : "Authorization-------"]
//    let header : [String : String] = ["Accept-Language" : "ar" , "Authorization" : "Authorization-------"]
//     AF.request(url, method: .post, headers: header as? HTTPHeaders)
//    
//         .response { response in
//            switch response.result{
//            case .failure(let error):
//                print(error)
//            case .success(let data):
//                do{
//                    let data = try? JSONDecoder().decode(LoginNumber.self, from: response.data!)
//                    if let data = data{
//                        let phone = self.TFLoginNumber.text
//                        
//                        print(data)
//                        print(phone!)
//                            
//                    }else{return}
//              
//                    
//                }catch{
//                    
//                }
//            }
//        }
//}
