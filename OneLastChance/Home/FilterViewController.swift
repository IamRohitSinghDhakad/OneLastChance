//
//  FilterViewController.swift
//  OneLastChance
//
//  Created by Dhakad, Rohit Singh (Cognizant) on 01/05/24.
//

import UIKit
import iOSDropDown

class FilterViewController: UIViewController {

    @IBOutlet weak var tfCategory: DropDown!
    @IBOutlet weak var tfBoxType: DropDown!
    @IBOutlet weak var tfFrom: UITextField!
    @IBOutlet weak var tfTo: UITextField!
    @IBOutlet weak var tblVw: UITableView!
    @IBOutlet weak var lblDistanceKmValue: UILabel!
    
    
    @IBOutlet weak var seekBarDistance: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add value changed event for the slider
        seekBarDistance.addTarget(self, action: #selector(sliderValueChanged(_:)), for: .valueChanged)

        let nib = UINib(nibName: "DietryTableViewCell", bundle: nil)
        self.tblVw.register(nib, forCellReuseIdentifier: "DietryTableViewCell")
        
    }
    
    @objc func sliderValueChanged(_ sender: UISlider) {
        lblDistanceKmValue.text = "\(Int(sender.value)) Km" // Update label text with slider value
    }
    

    @IBAction func btnOnBack(_ sender: Any) {
        onBackPressed()
    }
    @IBAction func btnSubmit(_ sender: Any) {
    }
    
}


extension FilterViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tblVw.dequeueReusableCell(withIdentifier: "DietryTableViewCell")as! DietryTableViewCell
        
        return cell
    }
    
}
