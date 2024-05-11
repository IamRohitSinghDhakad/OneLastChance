//
//  DetailViewController.swift
//  OneLastChance
//
//  Created by Dhakad, Rohit Singh  on 07/05/24.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var lblRatings: UILabel!
    @IBOutlet weak var imgVw: UIImageView!
    @IBOutlet weak var lblSave: UILabel!
    @IBOutlet weak var imgVwSave: UIImageView!
    @IBOutlet weak var lblAddress: UILabel!
    @IBOutlet weak var lblDistance: UILabel!
    @IBOutlet weak var lbltimming: UILabel!
    @IBOutlet weak var lblDesc: UILabel!
    @IBOutlet weak var tblVw: UITableView!
    @IBOutlet weak var tblVeHgtConstant: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tblVw.delegate = self
        self.tblVw.dataSource = self
        let nib = UINib(nibName: "DetailTableViewCell", bundle: nil)
        self.tblVw.register(nib, forCellReuseIdentifier: "DetailTableViewCell")
        
        self.tblVeHgtConstant.constant = 2 * 193
    }
    

    @IBAction func btnOnBack(_ sender: Any) {
        onBackPressed()
    }

    @IBAction func btnOnSave(_ sender: Any) {
    }
    @IBAction func btnOnShare(_ sender: Any) {
    }
    @IBAction func btnOnRatings(_ sender: Any) {
        pushVc(viewConterlerId: "MyReviewViewController")
    }
}


extension DetailViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tblVw.dequeueReusableCell(withIdentifier: "DetailTableViewCell")as! DetailTableViewCell
        
        return cell
    }
    
    
}


