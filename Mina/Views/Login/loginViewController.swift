//
//  loginViewController.swift
//  Mina
//
//  Created by mohsen on 26/12/2021.
//

import UIKit
import Alamofire

class loginViewController: UIViewController , UITextFieldDelegate  {

    @IBOutlet weak var TFLoginNumber: UITextField!
    @IBAction func loginBGOutside(_ sender: UITapGestureRecognizer) {
        TFLoginNumber.resignFirstResponder()

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        TFLoginNumber.delegate = self
        AF.request("https://ewanapp.com/mena/api/clients/login").response{response in
            debugPrint(response)
        }
     }
    
    @IBAction func loginButton(_ sender: UIButton) {
        guard  let loginTF = TFLoginNumber.text , !loginTF.isEmpty else{return}
        let param = ["phone" : TFLoginNumber.text! , "device_type" : "12345" , "device_id" : "sssss" , "firebase_token" : "www"]
        let header : [String : String] = ["Accept-Language" : "ar"]
    let url = "https://ewanapp.com/mena/api/clients/login"
        AF.request(url, method: .post, parameters: param, headers: header as? HTTPHeaders)
        
             .response { response in
                switch response.result{
                case .failure(let error):
                    print(error)
                case .success(let data):
                    do{
                        let data = try? JSONDecoder().decode(LoginNumber.self, from: response.data!)
                        print(data)
                    }catch{
                        
                    }
                }
            }
    }
    
 

}
