//
//  HomeViewController.swift
//  Mina
//
//  Created by mohsen on 29/12/2021.
//
import SideMenu
import UIKit
 
class HomeViewController: UIViewController {
    var menu : SideMenuNavigationController?

    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var bestOfferCollectionView: UICollectionView!
    @IBOutlet weak var ratingsCollectionView: UICollectionView!
    
    
    @IBOutlet weak var latestProductCollectionView: UICollectionView!
    
    var timer : Timer?
    var cureentCellIndex = 0
    
    var offerHome : [BestOfferHomeModel] = [
        .init(Title: "mohsen", image: "https://picsum.photos/100/200"),
        .init(Title: "fadel ", image: "https://picsum.photos/100/200"),
        .init(Title: "mohsen", image: "https://picsum.photos/100/200"),
         
    ]
    var ratingHome : [ratingHomeModel] = [
        .init(image: "https://picsum.photos/100/200", title:  "الكومبيوتر"),
        .init(image: "https://picsum.photos/100/200", title:  "الكومبيوتر"),
        .init(image: "https://picsum.photos/100/200", title:  "الكومبيوتر"),
        
            .init(image: "https://picsum.photos/100/200", title:  "الكومبيوتر"),
            .init(image: "https://picsum.photos/100/200", title:  "الكومبيوتر"),
            .init(image: "https://picsum.photos/100/200", title:  "الكومبيوتر"),
        
            .init(image: "https://picsum.photos/100/200", title:  "الكومبيوتر"),
            .init(image: "https://picsum.photos/100/200", title:  "الكومبيوتر"),
            .init(image: "https://picsum.photos/100/200", title:  "الكومبيوتر"),
    
    ]
    
    var latestProduct : [LatestProductsModel] = [
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
        startTimer()
        pageControl.numberOfPages = offerHome.count
        
        
        
        
        //side menu
        menu = SideMenuNavigationController(rootViewController: sideMinuViewController())


    }
    
    //registerCell
    
    private func registerCell(){
        
        //best Offer Collection View
        bestOfferCollectionView.register(UINib(nibName: BestOffersHomeCell.identifire, bundle: nil), forCellWithReuseIdentifier: BestOffersHomeCell.identifire)
        
        //ratings Collection View
        ratingsCollectionView.register(UINib(nibName: ratingsCollectionViewCell.identifire, bundle: nil), forCellWithReuseIdentifier: ratingsCollectionViewCell.identifire)
        
        
        
        //latest product
        latestProductCollectionView.register(UINib(nibName: LatestProductsUICollectionViewCell.identifire, bundle: nil), forCellWithReuseIdentifier: LatestProductsUICollectionViewCell.identifire)
    }


    
    @IBAction func siedMenu(_ sender: UIBarButtonItem) {
       // let menu = SideMenuNavigationController(rootViewController: sideMinuViewController())
        present(menu!, animated: true, completion: nil)
        
        
    }
    

}





