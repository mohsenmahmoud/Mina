//
//  timerBestOfferClass.swift
//  Mina
//
//  Created by mohsen on 29/12/2021.
//

import Foundation
extension HomeViewController{
    
//    private var timer: Timer?
//        private var counterDown = 30
//    
//    
//    func timerStart() {
//             timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { (timer) in
//                self.timerCountDown()
//            })
//        }
//    
//    
//    @objc func timerCountDown(){
//            self.counterDown -= 1
//            timerL.text = "( 00 : \(counterDown) )"
//            if self.counterDown <= 0
//            {
//                self.timerStop()
//                self.counterDown = 30
//               
//            }
//        }
//    func timerStop() {
//            timer?.invalidate()
//            timer = nil
//        }
    
    
    func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 2.5, target: self, selector: #selector(moveToNextIndex), userInfo: nil, repeats: true)
    }
    @objc func moveToNextIndex(){
        if cureentCellIndex < offerHome.count-1{
            cureentCellIndex += 1
        }else{
            cureentCellIndex = 0
        }
        
        bestOfferCollectionView.scrollToItem(at: IndexPath(item: cureentCellIndex, section: 0), at: .centeredHorizontally, animated: true)
        
        pageControl.currentPage = cureentCellIndex
    }
}
