//
//  ContactUsViewController.swift
//  OneLastChance
//
//  Created by Dhakad, Rohit Singh on 08/05/24.
//

import UIKit

class ContactUsViewController: UIViewController {

    @IBOutlet weak var tfSubject: UITextField!
    @IBOutlet weak var txtVwMsg: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnOnBack(_ sender: Any) {
        onBackPressed()
    }
    

    @IBAction func btnOnSUbmit(_ sender: Any) {
    }
}
