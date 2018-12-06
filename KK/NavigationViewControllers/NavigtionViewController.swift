//
//  NavigtionViewController.swift
//  KK
//
//  Created by 鏑木公紀　 on 2018/12/07.
//  Copyright © 2018 鏑木公紀　. All rights reserved.
//

import UIKit

class NavigtionViewController: UINavigationController {

    @IBOutlet var popUpView: UIView!
    @IBOutlet weak var shineView: FirstView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        showLodingScreen()
    }
    
    func showLodingScreen(){
        popUpView.bounds.size.width = view.bounds.width - 25
        popUpView.bounds.size.height = view.bounds.height - 40
        popUpView.center = view.center
        view.addSubview(popUpView)
        
    }
  
}
