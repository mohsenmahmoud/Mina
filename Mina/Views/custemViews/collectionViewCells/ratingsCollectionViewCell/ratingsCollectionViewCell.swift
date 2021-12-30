//
//  ratingsCollectionViewCell.swift
//  Mina
//
//  Created by mohsen on 29/12/2021.
//

import UIKit

class ratingsCollectionViewCell: UICollectionViewCell {
    static let identifire = String(describing: ratingsCollectionViewCell.self)

    @IBOutlet weak var reatingImageCollectionViewCell: UIImageView!
    
    @IBOutlet weak var ratingLableCollectionViewCell: UILabel!
    
    func setup(ratingHome : ratingHomeModel){
        reatingImageCollectionViewCell.kf.setImage(with:ratingHome.image?.asUrl)
        
        ratingLableCollectionViewCell.text = ratingHome.title
    }
}
