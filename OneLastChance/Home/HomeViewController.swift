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
    @IBOutlet weak var vwNoRecordFound: UIView!
    @IBOutlet weak var lblFood: UILabel!
    @IBOutlet weak var vwBgFood: UIView!
    @IBOutlet weak var lblShopping: UILabel!
    @IBOutlet weak var vwBgShopping: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tblVw.delegate = self
        self.tblVw.dataSource = self
        let nib = UINib(nibName: "HomeTableViewCell", bundle: nil)
        self.tblVw.register(nib, forCellReuseIdentifier: "HomeTableViewCell")
        self.vwNoRecordFound.isHidden = true
        
    }
    
    @IBAction func btnOnFilter(_ sender: Any) {
        pushVc(viewConterlerId: "FilterViewController")
    }
    
   
    @IBAction func btnOnSaved(_ sender: Any) {
        pushVc(viewConterlerId: "SavedViewController")
    }
    
    @IBAction func btnOnFood(_ sender: Any) {
        resetImages()
        self.vwBgFood.backgroundColor = .black
        self.lblFood.textColor = .white
        self.vwNoRecordFound.isHidden = true
        self.vwBgShopping.borderColor = .black
    }
    
    @IBAction func btnOnShopping(_ sender: Any) {
        resetImages()
        self.vwBgShopping.backgroundColor = .black
        self.lblShopping.textColor = .white
        self.vwNoRecordFound.isHidden = false
        self.vwBgFood.borderColor = .black
    }
    
    func resetImages(){
        self.vwBgFood.backgroundColor = .white
        self.vwBgShopping.backgroundColor = .white
        self.lblShopping.textColor = .black
        self.lblFood.textColor = .black
        self.vwBgShopping.borderWidth = 0.5
        self.vwBgFood.borderWidth = 0.5
       
        
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

