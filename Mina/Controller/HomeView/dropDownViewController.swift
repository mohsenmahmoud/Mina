//
//  dropDownViewController.swift
//  Mina
//
//  Created by mohsen on 01/01/2022.
//

import UIKit
import DropDown

class dropDownViewController: UIViewController {
    let dropDown = DropDown()

    @IBOutlet weak var LBLDropDown: UILabel!
    @IBOutlet weak var VIDropdown: UIView!
    
    let dropdownValue = ["home" , "price"]
    let itemsss = ["mohsen" , "fadel"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dropdownList(list: itemsss)
    }
    
    func dropdownList(list : [String]){
        LBLDropDown.text = "التصنيف الرئيسي"
        dropDown.cellConfiguration = { [unowned self] (index, item) in
          return "\(item)"
            self.LBLDropDown.text = dropdownValue[index]
        }
        dropDown.anchorView = VIDropdown
        dropDown.dataSource = list
        dropDown.bottomOffset = CGPoint(x: 0, y:(dropDown.anchorView?.plainView.bounds.height)!)
        dropDown.bottomOffset = CGPoint(x: 0, y:(dropDown.anchorView?.plainView.bounds.height)!)
        dropDown.direction = .bottom
        


    }
    @IBAction func showDataFromDD(_ sender: UIButton) {
        dropDown.show()
    }
    
}
