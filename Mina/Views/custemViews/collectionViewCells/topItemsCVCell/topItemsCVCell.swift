//
//  topItemsCVCell.swift
//  Mina
//
//  Created by mohsen on 02/01/2022.
//

import UIKit

class topItemsCVCell: UICollectionViewCell {

    static let identifire = String(describing: topItemsCVCell.self)

    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var PublicationTimeLBL: UILabel!
    
    @IBOutlet weak var userPersoneImage: UIImageView!
    @IBOutlet weak var titleProductLBL: UILabel!
    @IBOutlet weak var priceProductLBL: UILabel!
    @IBOutlet weak var nameUserLBL: UILabel!
    @IBOutlet weak var likeProductImage: UIImageView!
    @IBOutlet weak var locationUserImage: UIImageView!
    
    
    func setup(topItems : topItemsModel){
         productImage.kf.setImage(with:topItems.productImage?.asUrl)
      // userPersoneImage.kf.setImage(with:topItems.ImageUser?.asUrl)
       PublicationTimeLBL.text = topItems.PublicationTime
     titleProductLBL.text = topItems.title
       nameUserLBL.text = topItems.nameUser
        //priceProductLBL.text = topItems.priceProduct as! String
     }

}
