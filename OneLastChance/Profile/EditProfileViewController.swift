//
//  EditProfileViewController.swift
//  OneLastChance
//
//  Created by Dhakad, Rohit Singh on 03/05/24.
//

import UIKit

class EditProfileViewController: UIViewController {

    @IBOutlet weak var imgVwUser: UIImageView!
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfMobile: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func btnOnBack(_ sender: Any) {
        onBackPressed()
    }
   
    @IBAction func btnOnUploadPicture(_ sender: Any) {
        
    }
    
    @IBAction func btnOnSubmit(_ sender: Any) {
        
    }
    
}
