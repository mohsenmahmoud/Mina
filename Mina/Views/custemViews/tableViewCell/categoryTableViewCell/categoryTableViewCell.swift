//
//  categoryTableViewCell.swift
//  Mina
//
//  Created by mohsen on 02/01/2022.
//

import UIKit

class categoryTableViewCell: UITableViewCell {

    static let identifire = String(describing:categoryTableViewCell.self)

    @IBOutlet weak var LBLcategory: UILabel!
    @IBOutlet weak var imageCategory: UIImageView!
    
    
    func setup(listCategory : listCategoryModel){
        LBLcategory.text = listCategory.title
        imageCategory.kf.setImage(with:listCategory.image?.asUrl)

    }
}
