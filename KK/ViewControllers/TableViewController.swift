//
//  TableViewController.swift
//  KK
//
//  Created by 鏑木公紀　 on 2018/12/06.
//  Copyright © 2018 鏑木公紀　. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    
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

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return currentItemArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ViewControllerTableViewCell else { return UITableViewCell() }
        cell.labelOne.text = currentItemArray[indexPath.row].name
        cell.labelTwo.text = currentItemArray[indexPath.row].nameTwo
        cell.labelThree.text = currentItemArray[indexPath.row].nameThree
        cell.labelFour.text = "即日"
        
        cell.myImageView.image = UIImage(named: currentItemArray[indexPath.row].image)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 142
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
