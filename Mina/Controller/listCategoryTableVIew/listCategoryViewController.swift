//
//  listCategoryViewController.swift
//  Mina
//
//  Created by mohsen on 02/01/2022.
//

import UIKit

class listCategoryViewController: UIViewController , UITableViewDataSource , UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    let listItem : [listCategoryModel] = [
        .init(title: "كمبيوتر", image: "https://picsum.photos/100/200"),
        .init(title: "خدمات", image: "https://picsum.photos/100/200"),
        .init(title: "فاشون", image: "https://picsum.photos/100/200"),
        .init(title: "رياضه", image: "https://picsum.photos/100/200"),
        .init(title: "ميوزك", image: "https://picsum.photos/100/200"),
        .init(title: "عقارات", image: "https://picsum.photos/100/200"),
        
            .init(title: "جوالات", image: "https://picsum.photos/100/200"),
       
    ]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        registerCell()
    }
    private func registerCell(){
        let nib = UINib(nibName:categoryTableViewCell.identifire , bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: categoryTableViewCell.identifire)
}
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listItem.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:categoryTableViewCell.identifire, for: indexPath) as!categoryTableViewCell
        cell.setup(listCategory: listItem[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(listItem[indexPath.row])
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
 
    
}
