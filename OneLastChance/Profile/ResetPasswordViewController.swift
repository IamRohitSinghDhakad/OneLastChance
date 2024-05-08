//
//  ResetPasswordViewController.swift
//  OneLastChance
//
//  Created by Dhakad, Rohit Singh  on 08/05/24.
//

import UIKit

class ResetPasswordViewController: UIViewController {
    
    @IBOutlet weak var tfOldPassword: UITextField!
    @IBOutlet weak var tfNewPassword: UITextField!
    @IBOutlet weak var tfConfirmPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func btnOnBack(_ sender: Any) {
        onBackPressed()
        
    }
    @IBAction func btnOnSubmit(_ sender: Any) {
        
    }
    
}
