//
//  HomeViewController.swift
//  OneLastChance
//
//  Created by Dhakad, Rohit Singh (Cognizant) on 01/05/24.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnOnFilter(_ sender: Any) {
        pushVc(viewConterlerId: "FilterViewController")
    }
    
   

}
