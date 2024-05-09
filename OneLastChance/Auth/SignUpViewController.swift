//
//  SignUpViewController.swift
//  OneLastChance
//
//  Created by Rohit SIngh Dhakad on 01/05/24.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var tfFullName: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPhoneNumber: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var tfConfirmPassword: UITextField!
    @IBOutlet weak var tfReferalCodeOptional: UITextField!
    @IBOutlet weak var lblTermsAndCondition: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnOnAcceptTermsAndCondition(_ sender: Any) {
        
    }
    
    @IBAction func btnOnSignUp(_ sender: Any) {
        
    }
    
    @IBAction func btnOnLogin(_ sender: Any) {
        onBackPressed()
    }
    @IBAction func btnOnShowHidePassword(_ sender: Any) {
        self.tfPassword.isSecureTextEntry = !self.tfPassword.isSecureTextEntry
    }
    @IBAction func btnOnShowHideConfirmPassword(_ sender: Any) {
        self.tfConfirmPassword.isSecureTextEntry = !self.tfConfirmPassword.isSecureTextEntry
    }
}
