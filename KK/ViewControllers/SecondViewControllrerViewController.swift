//
//  SecondViewControllrerViewController.swift
//  KK
//
//  Created by 鏑木公紀　 on 2018/12/09.
//  Copyright © 2018 鏑木公紀　. All rights reserved.
//

import UIKit

class SecondViewControllrerViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate {
    
    @IBOutlet weak var mySearchBar: UISearchBar!
    @IBOutlet weak var tabelView: UITableView!
    
    var itemArray = [Item]()
    var currentItemArray = [Item]()
 
    
    
    class Item {
        let name: String
        let nameTwo: String
        let nameThree: String
        let image: String
        init(name: String, nameTwo: String, nameThree: String, image: String) {
            self.name = name
            self.nameTwo = nameTwo
            self.nameThree = nameThree
            self.image = image
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
    self.navigationController?.navigationBar.shadowImage = UIImage()
        
       
    self.navigationController?.navigationBar.barTintColor = UIColor.init(red: 35/255.0, green: 46/255.0, blue: 61/255.0, alpha: 1.0)
        
        let titleImageView = UIImageView(image: UIImage(named: "Text placeholderのコピー" ))
        titleImageView.contentMode = UIView.ContentMode.scaleAspectFit
        
        titleImageView.sizeToFit()
        
        navigationItem.titleView = titleImageView
        
         mySearchBar.barTintColor = UIColor.init(red: 35/255.0, green: 46/255.0, blue: 61/255.0, alpha: 1.0)
        
        mySearchBar.layer.borderColor = UIColor(red: 35/255.0, green: 46/255.0, blue: 61/255.0, alpha: 1.0).cgColor
        
          mySearchBar.searchBarStyle = UISearchBar.Style.minimal
   
      
       
        setUpItems()
        
        
        
    }
    
  
    
    private func setUpItems() {
        itemArray.append(Item(name: "ダイヤテックス パイオランクロス 養生用テープ 緑 50mm×25M 5巻パック Y-09-GR [マスキングテープ]", nameTwo: "ダイヤテックス", nameThree: "¥ 240", image: "61yuwI3XbwL._SL1000_"))
        itemArray.append(Item(name: "ダイヤテックス パイオランクロス 養生用テープ 緑 50mm×25M 5巻パック Y-09-GR [マスキングテープ]", nameTwo: "ダイヤテックス", nameThree: "¥ 240", image: "item02-7"))
        itemArray.append(Item(name: "ダイヤテックス パイオランクロス 養生用テープ 緑 50mm×25M 5巻パック Y-09-GR [マスキングテープ]", nameTwo: "ダイヤテックス", nameThree: "¥ 240", image: "tape2"))
        itemArray.append(Item(name: "プラダンシート", nameTwo: "佐藤ケミカル", nameThree: "¥ 190", image: "61tN6pGAWQL._SL1500_"))
        itemArray.append(Item(name: "セメダイン JISシリコーンシーラント 8060 プロ 330ml", nameTwo: "セメダイン", nameThree: "¥ 240", image: "8921740_3L1"))
        
        currentItemArray = itemArray
    }
    
    
    
    
    
    // MARK: - Table view data source
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return currentItemArray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ViewControllerTableViewCell else { return UITableViewCell() }
        cell.labelOne.text = currentItemArray[indexPath.row].name
        cell.labelTwo.text = currentItemArray[indexPath.row].nameTwo
        cell.labelThree.text = currentItemArray[indexPath.row].nameThree
        cell.labelFour.text = "即日"
        cell.labelFive.text = "にお届け"
        cell.myImageView.image = UIImage(named: currentItemArray[indexPath.row].image)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 142
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        guard !searchText.isEmpty else {
            currentItemArray = itemArray
            tabelView.reloadData()
            return }
        
        currentItemArray = itemArray.filter({ item -> Bool in
            item.nameTwo.contains(searchText.hiraganaToKatakana()) || item.name.contains(searchText.hiraganaToKatakana())
        })
        tabelView.reloadData()
        
    }

}


extension String {
    // MARK: Public Methods
    
    // ひらがな→カタカナ
    func hiraganaToKatakana() -> String {
        return self.transform(transform: .hiraganaToKatakana, reverse: false)
    }
    
    // MARK: Private Methods
    
    private func transform(transform: StringTransform, reverse: Bool) -> String {
        if let string = self.applyingTransform(transform, reverse: reverse) {
            return string
        } else {
            return ""
        }
    }
}



