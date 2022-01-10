//
//  collectionHome+extention.swift
//  Mina
//
//  Created by mohsen on 29/12/2021.
//

import Foundation
import UIKit
import Alamofire
extension HomeViewController : UICollectionViewDelegate , UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        switch collectionView{
        case ratingsCollectionView:
            return ratingHome.count
        case bestOfferCollectionView :
            return offerHome.count
        case latestProductCollectionView:
            return latestProduct.count
        default:return 0

        }

    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView{
        case ratingsCollectionView:
            let cell = ratingsCollectionView.dequeueReusableCell(withReuseIdentifier:ratingsCollectionViewCell.identifire, for: indexPath) as! ratingsCollectionViewCell
            cell.setup(ratingHome: ratingHome[indexPath.row])
            return cell
        case bestOfferCollectionView :
            let cell = bestOfferCollectionView.dequeueReusableCell(withReuseIdentifier:BestOffersHomeCell.identifire, for: indexPath) as! BestOffersHomeCell
            cell.setup(bestOfferHome: offerHome[indexPath.row])
            return cell
            
            
        case latestProductCollectionView:
            
            let cell = latestProductCollectionView.dequeueReusableCell(withReuseIdentifier:LatestProductsUICollectionViewCell.identifire, for: indexPath) as! LatestProductsUICollectionViewCell
            cell.setup(LatestProducts: latestProduct[indexPath.row])
            return cell
            
            
            
        default:
            return UICollectionViewCell()
        }
     
    }
     
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch collectionView{
        case bestOfferCollectionView:
            return CGSize(width: bestOfferCollectionView.frame.width, height: bestOfferCollectionView.frame.height)
        case ratingsCollectionView:
            return CGSize(width: 100, height: ratingsCollectionView.frame.height)
            
        case latestProductCollectionView:
            return CGSize(width: 200, height:280)
        default :
            return CGSize(width: 100, height: ratingsCollectionView.frame.height)

            
        }
    }
    
    
    
    
    
    
    
    
    
    func getData(){
 
       let url = "https://ewanapp.com/mena/api/clients/home"
        let auth = "GpyXhKjz7fjmVZYuyq51HebgslBEQDExP6HkEEDw46LdlgbJ9xnEsmaGitpo"
        let header : [String : String] = ["Accept-Language" : "en" , "Authorization" :auth]
        AF.request(url , headers: header as? HTTPHeaders).response{ response in
                switch response.result{
                case .failure(let error):
                    print(error)
                case .success(let data):
                    do{
                        
                        //let data = try JSONDecoder().decode(HomeModel.self, from: response.data!)
                       // print(data)
                        print("api --------------\(data)")
                        
                    }catch{
                        print("nnnnnnnnn")
                    }
                }
            }
    }
    

}
