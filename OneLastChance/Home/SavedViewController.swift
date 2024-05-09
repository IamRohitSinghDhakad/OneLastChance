//
//  SavedViewController.swift
//  OneLastChance
//
//  Created by Dhakad, Rohit Singh on 08/05/24.
//

import UIKit

class SavedViewController: UIViewController {

    @IBOutlet weak var tblVw: UITableView!
    @IBOutlet weak var vwNotFound: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tblVw.delegate = self
        self.tblVw.dataSource = self
        
        let nib = UINib(nibName: "SavedTableViewCell", bundle: nil)
        self.tblVw.register(nib, forCellReuseIdentifier: "SavedTableViewCell")
        // Do any additional setup after loading the view.
        
        self.vwNotFound.isHidden = true
    }
    
    @IBAction func btnOnBack(_ sender: Any) {
        onBackPressed()
    }
    
}

extension SavedViewController : UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tblVw.dequeueReusableCell(withIdentifier: "SavedTableViewCell")as! SavedTableViewCell
        
        return cell
    }
    
}

