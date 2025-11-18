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
        
        self.call_GetFoodList_Api()
        
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

extension HomeViewController {
    
    func call_GetFoodList_Api(){
        
        if !objWebServiceManager.isNetworkAvailable(){
            objWebServiceManager.hideIndicator()
            objAlert.showAlert(message: "No Internet Connection", title: "Alert", controller: self)
            return
        }
        
        objWebServiceManager.showIndicator()
        
        let dicrParam = ["user_id":objAppShareData.UserDetail.strUserId!,
                         "business_type":"",
                         "my_favorite":"",
                         "lat":"",
                         "lng":"",
                         "distance":"",
                         "vendor_id":"",
                         "category_id":"",
                         "box_type_id":"",
                         "range_from":"",
                         "range_to":"",
                         "dietary":""]as [String:Any]
        
        print(dicrParam)
        
        objWebServiceManager.requestPost(strURL: WsUrl.url_GetVendorList, queryParams: [:], params: dicrParam, strCustomValidation: "", showIndicator: false) { (response) in
            objWebServiceManager.hideIndicator()
            
            let status = (response["status"] as? Int)
            let message = (response["message"] as? String)
            print(response)
            
            if status == MessageConstant.k_StatusCode{
                if let user_details  = response["result"] as? [[String:Any]] {
//                    self.arrCars.removeAll()
//                    for data in user_details{
//                        let obj = HomeModel.init(from: data)
//                        self.arrCars.append(obj)
//                    }
//                    
//                    self.tblVw.reloadData()
                    
                }
            }else{
                objWebServiceManager.hideIndicator()
                if let msgg = response["result"]as? String{
                  //  self.arrCars.removeAll()
                    objAlert.showAlert(message: msgg, title: "", controller: self)
                }else{
                    objAlert.showAlert(message: message ?? "", title: "", controller: self)
                }
            }
            
            
        } failure: { (Error) in
            //  print(Error)
            objWebServiceManager.hideIndicator()
        }
    }
    
}

