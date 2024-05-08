//
//  HomeViewController.swift
//  OneLastChance
//
//  Created by Dhakad, Rohit Singh on 01/05/24.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var tfSeaerch: UITextField!
    @IBOutlet weak var tblVw: UITableView!
    @IBOutlet weak var imgVwForward: UIImageView!
    @IBOutlet weak var lblYourOrder: UILabel!
    @IBOutlet weak var imgVwOrder: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tblVw.delegate = self
        self.tblVw.dataSource = self
        let nib = UINib(nibName: "HomeTableViewCell", bundle: nil)
        self.tblVw.register(nib, forCellReuseIdentifier: "HomeTableViewCell")
        
    }
    
    @IBAction func btnOnFilter(_ sender: Any) {
        pushVc(viewConterlerId: "FilterViewController")
    }
    
   
    @IBAction func btnOnSaved(_ sender: Any) {
        pushVc(viewConterlerId: "SavedViewController")
    }
    @IBAction func btnOnFood(_ sender: Any) {
    }
    
    @IBAction func btnOnShopping(_ sender: Any) {
        
    }
    @IBAction func btnOnYourOrder(_ sender: Any) {
        pushVc(viewConterlerId: "YourOrderViewController")
    }
}

extension HomeViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tblVw.dequeueReusableCell(withIdentifier: "HomeTableViewCell")as! HomeTableViewCell
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        pushVc(viewConterlerId: "DetailViewController")
    }
}

