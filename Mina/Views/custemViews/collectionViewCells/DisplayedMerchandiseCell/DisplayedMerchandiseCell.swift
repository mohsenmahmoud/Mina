//
//  DisplayedMerchandiseCell.swift
//  Mina
//
//  Created by mohsen on 02/01/2022.
//

import UIKit

class DisplayedMerchandiseCell: UICollectionViewCell {

 
    static let identifire = String(describing: DisplayedMerchandiseCell.self)

    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var PublicationTimeLBL: UILabel!
    
    @IBOutlet weak var userPersoneImage: UIImageView!
    @IBOutlet weak var titleProductLBL: UILabel!
    @IBOutlet weak var priceProductLBL: UILabel!
    @IBOutlet weak var nameUserLBL: UILabel!
    @IBOutlet weak var likeProductImage: UIImageView!
    @IBOutlet weak var locationUserImage: UIImageView!
    
    
    func setup(DisplayedMerchandis : DisplayedMerchandiseMdel){
         productImage.kf.setImage(with:DisplayedMerchandis.productImage?.asUrl)
      // userPersoneImage.kf.setImage(with:topItems.ImageUser?.asUrl)
       PublicationTimeLBL.text = DisplayedMerchandis.PublicationTime
     titleProductLBL.text = DisplayedMerchandis.title
       nameUserLBL.text = DisplayedMerchandis.nameUser
        //priceProductLBL.text = topItems.priceProduct as! String
     }
}
