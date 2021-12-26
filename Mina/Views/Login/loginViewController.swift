//
//  loginViewController.swift
//  Mina
//
//  Created by mohsen on 26/12/2021.
//

import UIKit

class loginViewController: UIViewController , UITextFieldDelegate {

    @IBOutlet weak var TFLoginNumber: UITextField!
    
    
    
    
    @IBAction func loginBGOutside(_ sender: UITapGestureRecognizer) {
        TFLoginNumber.resignFirstResponder()
 
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        TFLoginNumber.delegate = self
     }
    

 

}
