//
//  activationCodeViewController.swift
//  Mina
//
//  Created by mohsen on 27/12/2021.
//

import UIKit
import Alamofire

class activationCodeViewController: UIViewController , UITextFieldDelegate {
 
    @IBOutlet weak var activeCodeNumber2: UITextField!
    @IBOutlet weak var activeCodeNumber1: UITextField!
    @IBOutlet weak var activeCodeNumber3: UITextField!
    @IBOutlet weak var activeCodeNumber4: UITextField!
    
    
    @IBOutlet weak var timerLBL: UILabel!
    
    @IBOutlet weak var sendAgainLBL: UIButton!
    
    var phoneNumber :String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
         // Do any additional setup after loading the view.
        activeCodeNumber1.delegate = self
        sendAgainLBL.isHidden = true
        timerStart()
    }

    
    func chickNumber(){
 
        let number1 = activeCodeNumber1.text
        let number2 = activeCodeNumber2.text
        let number3 = activeCodeNumber3.text
        let number4 = activeCodeNumber4.text
        if number1!.isEmpty{
            print("not value")
        }else{
            if let number = number1{
                print(number)
            }else{return}
        }
        
        if number2!.isEmpty{
            print("not value")
        }else{
            if let number = number2{
                print(number)
            }else{return}
        }
        
        if number3!.isEmpty{
            print("not value")
        }else{
            if let number = number3{
                print(number)
            }else{return}
        }
         
        if number4!.isEmpty{
            print("not value")
        }else{
            if let number = number4{
                print(number)
            }else{return}
        }
    }
    
    
    @IBAction func sendActiveCodeDone(_ sender: UIButton) {
        chickNumber()
        let numbers = activeCodeNumber1.text! + activeCodeNumber2.text! + activeCodeNumber3.text! + activeCodeNumber4.text!
        print(numbers)
        //reguest
        let param = ["phone" : phoneNumber , "code" :numbers]
        let header : [String : String] = ["Accept-Language" : "ar"]
            let url = "https://ewanapp.com/mena/api/clients/verifyCode"
        AF.request(url, method: .post, parameters: param, headers: header as? HTTPHeaders)
            .response { response in
                switch response.result{
                case .failure(let error):
                    print(error)
                case .success(let data):
                    do{
                        let data = try JSONDecoder().decode(VerifyCode.self, from: response.data!)
                        print(data)
                    }catch{
                    }
                }
            }
    }
    
    
    //timer
    private var timer: Timer?
        private var counterDown = 5
    func timerStart() {
             timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { (timer) in
                self.timerCountDown()
            })
        }



    @objc func timerCountDown(){
            self.counterDown -= 1
            timerLBL.text = "\(counterDown)"
            if self.counterDown <= 0
            {
                self.timerStop()
                sendAgainLBL.isHidden = false
                self.counterDown = 5
             }
        }

    func timerStop() {
            timer?.invalidate()
            timer = nil
        }
    
    
    
    
    //send again action
    @IBAction func sendAgainAction(_ sender: UIButton) {
        print("send again")
        timerStart()

        
        //reguest
        let param = ["phone" : phoneNumber]
        let header : [String : String] = ["Accept-Language" : "ar"]
            let url = "https://ewanapp.com/mena/api/clients/resendCode"
        AF.request(url, method: .post, parameters: param, headers: header as? HTTPHeaders)
            .response { response in
                switch response.result{
                case .failure(let error):
                    print(error)
                case .success(let data):
                    do{
                        let data = try JSONDecoder().decode(VerifyCode.self, from: response.data!)
                        print(data)
                    }catch{
                    }
                }
            }
        
        
        
        
    }

    
   }
 

