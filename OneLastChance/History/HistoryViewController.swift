//
//  HistoryViewController.swift
//  OneLastChance
//
//  Created by Dhakad, Rohit Singh on 01/05/24.
//

import UIKit

class HistoryViewController: UIViewController {
    
    
    @IBOutlet weak var vwNotFound: UIView!
    @IBOutlet weak var tblVw: UITableView!
    @IBOutlet weak var lblUpcoming: UILabel!
    @IBOutlet weak var vwUpcoming: UIView!
    @IBOutlet weak var vwCompleted: UIView!
    @IBOutlet weak var lblCompleted: UILabel!
    @IBOutlet weak var vwCancelled: UIView!
    @IBOutlet weak var lblCanceled: UILabel!
    @IBOutlet weak var vwHistory: UIView!
    @IBOutlet weak var lblHistory: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tblVw.delegate = self
        self.tblVw.dataSource = self
        
        let nib = UINib(nibName: "HistoryTableViewCell", bundle: nil)
        self.tblVw.register(nib, forCellReuseIdentifier: "HistoryTableViewCell")
        
        self.vwNotFound.isHidden = true
    }


    @IBAction func btnActions(_ sender: UIButton) {
        
        // Reset all label and view colors
        lblUpcoming.textColor = .black
        vwUpcoming.backgroundColor = .white
        vwUpcoming.layer.borderColor = UIColor.black.cgColor
        
        lblCompleted.textColor = .black
        vwCompleted.backgroundColor = .white
        vwCompleted.layer.borderColor = UIColor.black.cgColor
        
        lblCanceled.textColor = .black
        vwCancelled.backgroundColor = .white
        vwCancelled.layer.borderColor = UIColor.black.cgColor
        
        lblHistory.textColor = .black
        vwHistory.backgroundColor = .white
        vwHistory.layer.borderColor = UIColor.black.cgColor
       
        // Update the UI based on the button tapped
        switch sender.tag {
        case 10: // Upcoming
            lblUpcoming.textColor = .white
            vwUpcoming.backgroundColor = .black
            vwUpcoming.layer.borderColor = UIColor.black.cgColor
            self.vwNotFound.isHidden = true
        case 11: // Completed
            lblCompleted.textColor = .white
            vwCompleted.backgroundColor = .black
            vwCompleted.layer.borderColor = UIColor.black.cgColor
            self.vwNotFound.isHidden = false
        case 12: // Canceled
            lblCanceled.textColor = .white
            vwCancelled.backgroundColor = .black
            vwCancelled.layer.borderColor = UIColor.black.cgColor
            self.vwNotFound.isHidden = false
        case 13: // History
            lblHistory.textColor = .white
            vwHistory.backgroundColor = .black
            vwHistory.layer.borderColor = UIColor.black.cgColor
            self.vwNotFound.isHidden = false
        default:
            break
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
