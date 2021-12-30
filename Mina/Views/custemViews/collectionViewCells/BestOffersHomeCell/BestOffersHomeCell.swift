//
//  BestOffersHomeCell.swift
//  Mina
//
//  Created by mohsen on 29/12/2021.
//

import UIKit
import Kingfisher

class BestOffersHomeCell: UICollectionViewCell {
    
    static let identifire = String(describing: BestOffersHomeCell.self )

    @IBOutlet weak var BestOffersImageHomeCell: UIImageView!
 
    
    func setup(bestOfferHome : BestOfferHomeModel){
        BestOffersImageHomeCell.kf.setImage(with:bestOfferHome.image?.asUrl)
        
    }
}
