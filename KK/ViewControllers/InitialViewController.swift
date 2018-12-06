//
//  ViewController.swift
//  KK
//
//  Created by 鏑木公紀　 on 2018/12/06.
//  Copyright © 2018 鏑木公紀　. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {

    
    @IBOutlet weak var myLabelOne: UILabel!
    @IBOutlet weak var myLabelTwo: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myLabelOne.alpha = 0
        myLabelTwo.alpha = 0
        
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 2, animations: {
            self.myLabelOne.alpha = 1.0
        }) { (true) in
            UIView.animate(withDuration: 1, animations: {
                self.myLabelTwo.alpha = 1.0
            }, completion: { (true) in
                self.performSegue(withIdentifier: "segue", sender: self)
            })
        }
    }
}


