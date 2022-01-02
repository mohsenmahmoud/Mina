//
//  topItemsVC.swift
//  Mina
//
//  Created by mohsen on 02/01/2022.
//

import UIKit

class topItemsVC: UIViewController {

 
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var topItemsValue : [topItemsModel] = [
        .init(title: "كومبيوتر", productImage: "https://picsum.photos/100/200", nameUser: "mohsen", ImageUser: "https://picsum.photos/100/200", PublicationTime: "منذ ٣ ساعات"),
        
            .init(title: "كومبيوتر", productImage: "https://picsum.photos/100/200", nameUser: "mohsen", ImageUser: "https://picsum.photos/100/200", PublicationTime: "منذ ٣ ساعات"),
        
            .init(title: "كومبيوتر", productImage: "https://picsum.photos/100/200", nameUser: "mohsen", ImageUser: "https://picsum.photos/100/200", PublicationTime: "منذ ٣ ساعات"),
        
            .init(title: "كومبيوتر", productImage: "https://picsum.photos/100/200", nameUser: "mohsen", ImageUser: "https://picsum.photos/100/200", PublicationTime: "منذ ٣ ساعات"),
        
            .init(title: "كومبيوتر", productImage: "https://picsum.photos/100/200", nameUser: "mohsen", ImageUser: "https://picsum.photos/100/200", PublicationTime: "منذ ٣ ساعات"),
        
            .init(title: "كومبيوتر", productImage: "https://picsum.photos/100/200", nameUser: "mohsen", ImageUser: "https://picsum.photos/100/200", PublicationTime: "منذ ٣ ساعات"),
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
        // Do any additional setup after loading the view.
    }
    
    //registerCell
    
    private func registerCell(){
        
      //  latest product
        collectionView.register(UINib(nibName: topItemsCVCell.identifire, bundle: nil), forCellWithReuseIdentifier: topItemsCVCell.identifire)
    }
    

 

}

extension topItemsVC : UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return topItemsValue.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: topItemsCVCell.identifire, for: indexPath) as! topItemsCVCell
        cell.setup(topItems: topItemsValue[indexPath.row])
         
        return cell
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
     

        return CGSize(width:self.view.frame.width * 0.493, height:self.view.frame.height * 0.35)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 1, left: 2, bottom: 1, right: 2)
    }


}
