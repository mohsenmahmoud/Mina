//
//  splashViewController.swift
//  Mina
//
//  Created by mohsen on 04/01/2022.
//

import UIKit

class splashViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            if Helper.getToken() != nil {
                // Home
                //prepare(for: "goHome", sender: self)
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController")
                self.present(vc!, animated: true, completion: nil)

            }else{
                // Auth
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "loginViewController")
                self.present(vc!, animated: true, completion: nil)

            }
        }

     }
    

 

}
