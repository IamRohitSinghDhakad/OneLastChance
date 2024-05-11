//
//  MyReviewViewController.swift
//  OneLastChanceVendor
//
//  Created by Rohit SIngh Dhakad on 09/05/24.
//

import UIKit

class MyReviewViewController: UIViewController {

    @IBOutlet weak var tblVw: UITableView!
    @IBOutlet weak var imgVw: UIImageView!
    @IBOutlet weak var lblRestaurantName: UILabel!
    @IBOutlet weak var lblOverallRating: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tblVw.delegate = self
        self.tblVw.dataSource = self
        let nib = UINib(nibName: "MyReviewTableViewCell", bundle: nil)
        self.tblVw.register(nib, forCellReuseIdentifier: "MyReviewTableViewCell")
    }
    

    @IBAction func btnOnBack(_ sender: Any) {
        onBackPressed()
    }
}


extension MyReviewViewController : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tblVw.dequeueReusableCell(withIdentifier: "MyReviewTableViewCell")as! MyReviewTableViewCell
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
    }
    
}

