//
//  newItemsVCCell.swift
//  Mina
//
//  Created by mohsen on 02/01/2022.
//

import UIKit

class newItemsVCCell: UICollectionViewCell {

    static let identifire = String(describing: newItemsVCCell.self)

    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var PublicationTimeLBL: UILabel!
    
    @IBOutlet weak var userPersoneImage: UIImageView!
    @IBOutlet weak var titleProductLBL: UILabel!
    @IBOutlet weak var priceProductLBL: UILabel!
    @IBOutlet weak var nameUserLBL: UILabel!
    @IBOutlet weak var likeProductImage: UIImageView!
    @IBOutlet weak var locationUserImage: UIImageView!
    
    
    func setup(newItems : newItemsModel){
        productImage.kf.setImage(with:newItems.productImage?.asUrl)
       // userPersoneImage.kf.setImage(with:LatestProducts.ImageUser?.asUrl)
      PublicationTimeLBL.text = newItems.PublicationTime
      titleProductLBL.text = newItems.title
      nameUserLBL.text = newItems.nameUser
        //priceProductLBL.text = LatestProducts.priceProduct as! String
     }

}
