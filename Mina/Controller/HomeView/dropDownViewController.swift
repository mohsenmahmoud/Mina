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
    //1
    @IBOutlet weak var LBLDropDown: UILabel!
    @IBOutlet weak var VIDropdown: UIView!
    //2
    
    @IBOutlet weak var ViewSubCategory: UIView!
    @IBOutlet weak var subCategoryLBL: UILabel!
    
    //٣
    @IBOutlet weak var typeCategoryLBL: UILabel!
    @IBOutlet weak var viewTypeCategory: UIView!
    
    //4
    @IBOutlet weak var itemCondtionLBL: UILabel!
    @IBOutlet weak var viewItemCondtion: UIView!
    
    //5
   
    @IBOutlet weak var currencyTypeLBL: UILabel!
    @IBOutlet weak var viewCurrencyType: UIView!
    
    let dropdownValue = ["home" , "price"]
    let SubCategoryValue = ["mohsen" , "mohsen"]
    let typeCategoryValue = ["fadel" , "fadel"]
    let itemCondtionValue = ["mahmoud" , "mahmoud"]
    let currencyTypeValue = ["category" , "items"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dropdownList(list: dropdownValue)
        SubCategory(list: SubCategoryValue)
        typeCategory(list: typeCategoryValue)
        itemCondtion(list: itemCondtionValue)
        currencyType(list: currencyTypeValue)
    }
    //1
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
    
    
    
    //2
    func SubCategory(list : [String]){
        subCategoryLBL.text = "التصنيف الفرعي"
        dropDown.cellConfiguration = { [unowned self] (index, item) in
          return "\(item)"
            self.subCategoryLBL.text = SubCategoryValue[index]
        }
        dropDown.anchorView = ViewSubCategory
        dropDown.dataSource = list
        dropDown.bottomOffset = CGPoint(x: 0, y:(dropDown.anchorView?.plainView.bounds.height)!)
        dropDown.bottomOffset = CGPoint(x: 0, y:(dropDown.anchorView?.plainView.bounds.height)!)
        dropDown.direction = .bottom
    }
    
    
    
    //3
    func typeCategory(list : [String]){
        typeCategoryLBL.text = "النوع"
        dropDown.cellConfiguration = { [unowned self] (index, item) in
          return "\(item)"
            self.typeCategoryLBL.text = typeCategoryValue[index]
        }
        dropDown.anchorView = viewTypeCategory
        dropDown.dataSource = list
        dropDown.bottomOffset = CGPoint(x: 0, y:(dropDown.anchorView?.plainView.bounds.height)!)
        dropDown.bottomOffset = CGPoint(x: 0, y:(dropDown.anchorView?.plainView.bounds.height)!)
        dropDown.direction = .bottom
    }
    
    
    //4
    func itemCondtion(list : [String]){
        itemCondtionLBL.text = "حاله السلعه"
        dropDown.cellConfiguration = { [unowned self] (index, item) in
          return "\(item)"
            self.itemCondtionLBL.text = itemCondtionValue[index]
        }
        dropDown.anchorView = viewItemCondtion
        dropDown.dataSource = list
        dropDown.bottomOffset = CGPoint(x: 0, y:(dropDown.anchorView?.plainView.bounds.height)!)
        dropDown.bottomOffset = CGPoint(x: 0, y:(dropDown.anchorView?.plainView.bounds.height)!)
        dropDown.direction = .bottom
    }
    
    
    //5
    func currencyType(list : [String]){
        currencyTypeLBL.text = " نوع العمله"
        dropDown.cellConfiguration = { [unowned self] (index, item) in
          return "\(item)"
            self.currencyTypeLBL.text = currencyTypeValue[index]
        }
        dropDown.anchorView = viewCurrencyType
        dropDown.dataSource = list
        dropDown.bottomOffset = CGPoint(x: 0, y:(dropDown.anchorView?.plainView.bounds.height)!)
        dropDown.bottomOffset = CGPoint(x: 0, y:(dropDown.anchorView?.plainView.bounds.height)!)
        dropDown.direction = .bottom
    }
    
    
    
    
    @IBAction func showDataFromDD(_ sender: UIButton) {
        dropDown.show()
    }
    
}
