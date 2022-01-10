//
//  sideMinuViewController.swift
//  Mina
//
//  Created by mohsen on 31/12/2021.
//

import UIKit
import SideMenu

class sideMinuViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {

    
    var itme = ["home" , "profile"]

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")

     }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itme.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = itme[indexPath.row]
        
        return cell
    }
    
    
}






 
 
