//
//  YourOrderViewController.swift
//  OneLastChance
//
//  Created by Dhakad, Rohit Singh  on 08/05/24.
//

import UIKit

class YourOrderViewController: UIViewController {

    @IBOutlet weak var lblStatus: UILabel!
    @IBOutlet weak var lblOrderID: UILabel!
    @IBOutlet weak var lblFoodName: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var lblRestaurantName: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    @IBOutlet weak var lblPickUpBy: UILabel!
    @IBOutlet weak var lblPickupdesc: UILabel!
    @IBOutlet weak var lblInstruction: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func btnOnBack(_ sender: Any) {
        onBackPressed()
    }
    
    @IBAction func btnOnChat(_ sender: Any) {
        
    }
    
    @IBAction func btnOnMap(_ sender: Any) {
        
    }
}
