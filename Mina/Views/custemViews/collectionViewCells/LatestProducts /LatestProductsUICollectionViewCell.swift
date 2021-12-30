//
//  LatestProductsUICollectionViewCell.swift
//  Mina
//
//  Created by mohsen on 30/12/2021.
//

import UIKit

class LatestProductsUICollectionViewCell: UICollectionViewCell {
 
    static let identifire = String(describing: LatestProductsUICollectionViewCell.self)

    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var PublicationTimeLBL: UILabel!
    
    @IBOutlet weak var userPersoneImage: UIImageView!
    @IBOutlet weak var titleProductLBL: UILabel!
    @IBOutlet weak var priceProductLBL: UILabel!
    @IBOutlet weak var nameUserLBL: UILabel!
    @IBOutlet weak var likeProductImage: UIImageView!
    @IBOutlet weak var locationUserImage: UIImageView!
    
    
    func setup(LatestProducts : LatestProductsModel){
        productImage.kf.setImage(with:LatestProducts.productImage?.asUrl)
       // userPersoneImage.kf.setImage(with:LatestProducts.ImageUser?.asUrl)
        PublicationTimeLBL.text = LatestProducts.PublicationTime
        titleProductLBL.text = LatestProducts.title
       // nameUserLBL.text = LatestProducts.nameUser
        //priceProductLBL.text = LatestProducts.priceProduct as! String
     }
     
}
