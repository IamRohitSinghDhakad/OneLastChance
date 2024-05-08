//
//  PrivacyPolicyViewController.swift
//  OneLastChance
//
//  Created by Dhakad, Rohit Singh on 08/05/24.
//

import UIKit
import WebKit

class PrivacyPolicyViewController: UIViewController {
    
    @IBOutlet weak var webVw: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnOnBack(_ sender: Any) {
        onBackPressed()
    }
    

}
