//
//  LoginViewController.swift
//  OneLastChance
//
//  Created by Rohit SIngh Dhakad on 01/05/24.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func btnOnShowHidePassword(_ sender: Any) {
        self.tfPassword.isSecureTextEntry = !self.tfPassword.isSecureTextEntry
    }
    
    @IBAction func btnOnLogin(_ sender: Any) {
        self.setRootController()
    }
    
    
    @IBAction func btnOnForGotPasswords(_ sender: Any) {
        pushVc(viewConterlerId: "ForgotPasswordViewController")
    }
    
    @IBAction func btnOnSignUp(_ sender: Any) {
        pushVc(viewConterlerId: "SignUpViewController")
    }
    
    
    func setRootController(){
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let vc = (self.mainStoryboard.instantiateViewController(withIdentifier: "TabBarViewController") as? TabBarViewController)!
        let navController = UINavigationController(rootViewController: vc)
        navController.isNavigationBarHidden = true
        appDelegate.window?.rootViewController = navController
    }
}
