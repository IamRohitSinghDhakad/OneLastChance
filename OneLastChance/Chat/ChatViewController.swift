//
//  ChatViewController.swift
//  OneLastChance
//
//  Created by Dhakad, Rohit Singh  on 01/05/24.
//

import UIKit

class ChatViewController: UIViewController {

    @IBOutlet weak var tblVw: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tblVw.delegate = self
        self.tblVw.dataSource = self
        let nib = UINib(nibName: "ChatTableViewCell", bundle: nil)
        self.tblVw.register(nib, forCellReuseIdentifier: "ChatTableViewCell")
        
    }
    
}


extension ChatViewController : UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tblVw.dequeueReusableCell(withIdentifier: "ChatTableViewCell")as! ChatTableViewCell
        
        return cell
    }
    
}
