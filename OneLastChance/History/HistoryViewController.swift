//
//  HistoryViewController.swift
//  OneLastChance
//
//  Created by Dhakad, Rohit Singh on 01/05/24.
//

import UIKit

class HistoryViewController: UIViewController {
    
    
    @IBOutlet weak var tblVw: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tblVw.delegate = self
        self.tblVw.dataSource = self
        
        let nib = UINib(nibName: "HistoryTableViewCell", bundle: nil)
        self.tblVw.register(nib, forCellReuseIdentifier: "HistoryTableViewCell")
    }


    @IBAction func btnActions(_ sender: UIButton) {
        
       
        switch sender.tag {
        case 10:
            print("")
        case 11:
            print("")
        case 12:
            print("")
        case 13:
            print("")
        default:
            print("")
        }
    }
    
    
}


extension HistoryViewController : UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HistoryTableViewCell", for: indexPath)as! HistoryTableViewCell
        
        
        return cell
    }
    
    
    
    
    
}
