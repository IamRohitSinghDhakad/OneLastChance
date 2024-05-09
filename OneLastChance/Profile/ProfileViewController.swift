//
//  ProfileViewController.swift
//  OneLastChance
//
//  Created by Dhakad, Rohit Singh on 01/05/24.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var imgVwUser: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var lblNumber: UILabel!
    @IBOutlet weak var lblTotalOrders: UILabel!
    @IBOutlet weak var lblTotalReferals: UILabel!
    @IBOutlet weak var lblRewardsPoints: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnOnEditProfile(_ sender: Any) {
        pushVc(viewConterlerId: "EditProfileViewController")
    }
    
   
    @IBAction func btnOnResetPassword(_ sender: Any) {
        pushVc(viewConterlerId: "ResetPasswordViewController")
    }
    
    @IBAction func btnOnContactUs(_ sender: Any) {
        pushVc(viewConterlerId: "ContactUsViewController")
    }
    @IBAction func btnOnPrivacyPolicy(_ sender: Any) {
        pushVc(viewConterlerId: "PrivacyPolicyViewController")
    }
    @IBAction func btnOnAboutUs(_ sender: Any) {
        pushVc(viewConterlerId: "PrivacyPolicyViewController")
    }
    @IBAction func btnOnLogout(_ sender: Any) {
        
    }
    
    @IBAction func btnOnShareMyCode(_ sender: Any) {
        let textToShare = "asd%^4ds" // Replace this with your string content
        
        let activityViewController = UIActivityViewController(activityItems: [textToShare], applicationActivities: nil)
        activityViewController.popoverPresentationController?.sourceView = self.view // For iPad compatibility
        
        // Present the view controller
        self.present(activityViewController, animated: true, completion: nil)
        
    }
}
