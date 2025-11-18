//
//  SignUpViewController.swift
//  OneLastChance
//
//  Created by Rohit SIngh Dhakad on 01/05/24.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var tfFullName: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPhoneNumber: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var tfConfirmPassword: UITextField!
    @IBOutlet weak var tfReferalCodeOptional: UITextField!
    @IBOutlet weak var lblTermsAndCondition: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnOnAcceptTermsAndCondition(_ sender: Any) {
        
    }
    
    @IBAction func btnOnSignUp(_ sender: Any) {
        if validateForm() {
            self.call_WsLogin()
           }
    }
    
    @IBAction func btnOnLogin(_ sender: Any) {
        onBackPressed()
    }
    @IBAction func btnOnShowHidePassword(_ sender: Any) {
        self.tfPassword.isSecureTextEntry = !self.tfPassword.isSecureTextEntry
    }
    @IBAction func btnOnShowHideConfirmPassword(_ sender: Any) {
        self.tfConfirmPassword.isSecureTextEntry = !self.tfConfirmPassword.isSecureTextEntry
    }
}


extension SignUpViewController {
    
    func call_WsLogin(){
        
        if !objWebServiceManager.isNetworkAvailable(){
            objWebServiceManager.hideIndicator()
            objAlert.showAlert(message: "No Internet Connection", title: "Alert", controller: self)
            return
        }
        
        objWebServiceManager.showIndicator()
        
        var dicrParam = [String:Any]()

            dicrParam = ["name":self.tfFullName.text!,
                         "email":self.tfEmail.text!,
                         "mobile":self.tfPhoneNumber.text!,
                         "password":self.tfPassword.text!,
                         "referral_code":self.tfReferalCodeOptional.text!,
                         "type":"user",
                         "register_id":objAppShareData.strFirebaseToken]as [String:Any]
        
        
        objWebServiceManager.requestGet(strURL: WsUrl.url_SignUp, params: dicrParam, queryParams: [:], strCustomValidation: "") { (response) in
            objWebServiceManager.hideIndicator()
            
            let status = (response["status"] as? Int)
            let message = (response["message"] as? String)
            print(response)
            if status == MessageConstant.k_StatusCode{
                if let user_details  = response["result"] as? [String:Any] {
                    
                    objAppShareData.SaveUpdateUserInfoFromAppshareData(userDetail: user_details)
                    objAppShareData.fetchUserInfoFromAppshareData()
                    self.setRootController()
                    
                }
                else {
                    objAlert.showAlert(message: "Something went wrong!", title: "", controller: self)
                }
            }else{
                objWebServiceManager.hideIndicator()
                if let msgg = response["result"]as? String{
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
    
    
    func setRootController(){
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let vc = (self.mainStoryboard.instantiateViewController(withIdentifier: "TabBarViewController") as? TabBarViewController)!
        let navController = UINavigationController(rootViewController: vc)
        navController.isNavigationBarHidden = true
        appDelegate.window?.rootViewController = navController
    }
    
    
}

//MARK: Validations
extension SignUpViewController{
    
    // Function to validate the full name
       func isValidFullName() -> Bool {
           guard let fullName = tfFullName.text, !fullName.isEmpty else {
               return false
           }
           return true
       }

       // Function to validate email
       func isValidEmail() -> Bool {
           guard let email = tfEmail.text, email.isValidEmail() else {
               return false
           }
           return true
       }

       // Function to validate phone number
       func isValidPhoneNumber() -> Bool {
           guard let phoneNumber = tfPhoneNumber.text, phoneNumber.isValidPhoneNumber() else {
               return false
           }
           return true
       }

       // Function to validate password
       func isValidPassword() -> Bool {
           guard let password = tfPassword.text, !password.isEmpty else {
               return false
           }
           return true
       }
    
//    // Function to validate password
//       func isValidPassword() -> Bool {
//           guard let password = tfPassword.text, password.isValidPassword() else {
//               return false
//           }
//           return true
//       }


       // Function to check if password and confirm password match
       func doPasswordsMatch() -> Bool {
           guard let password = tfPassword.text, let confirmPassword = tfConfirmPassword.text else {
               return false
           }
           return password == confirmPassword
       }

       // Function to validate the form
       func validateForm() -> Bool {
           var isValid = true
           var errorMessage = ""

           if !isValidFullName() {
               isValid = false
               errorMessage += "Full Name is required.\n"
           }

           if !isValidEmail() {
               isValid = false
               errorMessage += "Valid Email is required.\n"
           }

           if !isValidPhoneNumber() {
               isValid = false
               errorMessage += "Valid Phone Number is required.\n"
           }

           if !isValidPassword() {
                     isValid = false
                     errorMessage += "Password must be at least 8 characters long, include at least one letter, one number, and one special character.\n"
                 }

           if !doPasswordsMatch() {
               isValid = false
               errorMessage += "Passwords do not match.\n"
           }

           if !isValid {
               showAlert(message: errorMessage)
           }

           return isValid
       }

       // Function to show an alert with a message
       func showAlert(message: String) {
           let alert = UIAlertController(title: "Validation Error", message: message, preferredStyle: .alert)
           alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
           self.present(alert, animated: true, completion: nil)
       }
}


extension String {
    // Check if the string is a valid email format
    func isValidEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: self)
    }

    // Check if the string is a valid phone number (example for US numbers)
    func isValidPhoneNumber() -> Bool {
        let phoneRegEx = "^[0-9]{10}$"
        let phonePred = NSPredicate(format: "SELF MATCHES %@", phoneRegEx)
        return phonePred.evaluate(with: self)
    }
    
    // Check if the string is a valid password format
       func isValidPassword() -> Bool {
           let passwordRegEx = "^(?=.*[A-Za-z])(?=.*\\d)(?=.*[!@#$%^&*(),.?\":{}|<>])[A-Za-z\\d!@#$%^&*(),.?\":{}|<>]{8,}$"
           let passwordPred = NSPredicate(format: "SELF MATCHES %@", passwordRegEx)
           return passwordPred.evaluate(with: self)
       }
}
