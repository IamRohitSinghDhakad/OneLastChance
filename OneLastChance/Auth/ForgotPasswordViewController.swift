//
//  ForgotPasswordViewController.swift
//  OneLastChance
//
//  Created by Dhakad, Rohit Singh (Cognizant) on 01/05/24.
//

import UIKit

class ForgotPasswordViewController: UIViewController {

    @IBOutlet weak var tfEmail: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnOnSend(_ sender: Any) {
    }
    
    @IBAction func btnOnBack(_ sender: Any) {
        onBackPressed()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
