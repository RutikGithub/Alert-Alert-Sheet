//
//  ViewController.swift
//  AlertTwentyNinePractical
//
//  Created by Mac on 28/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var address: UITextField!
    @IBOutlet weak var mobileNumber: UITextField!
    
    var secondViewController:SecondViewController?
    
    
    
    @IBOutlet weak var emaild: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
       

    }

    @IBAction func submit(_ sender: Any) {
        let fname = self.firstName.text!
        let lname = self.lastName.text!
        let addr = self.address.text!
        let email = self.emaild.text!
        let mobNo = Double(self.mobileNumber.text!)!
        
                secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        secondViewController?.container =  Student(firstName: fname, lastName: lname, address: addr, emailId: email, mobileNumber: mobNo)

      //  showAlertBeforeSubmitingData()  // By Alert
        usingActionSheet()                // By Alert Sheet
        navigationController?.pushViewController(secondViewController!, animated: true)
    }
    
    func showAlertBeforeSubmitingData()
    {
        let alert = UIAlertController(title: "Are You Sure ?", message: "It's Message", preferredStyle: .alert)
        let action = UIAlertAction(title: "Cancel", style: .cancel)
        let action1 = UIAlertAction(title: "Default", style: .default)
        let action2 = UIAlertAction(title: "Delete", style: .destructive)
        
        alert.addAction(action)
        alert.addAction(action1)
        alert.addAction(action2)
        
        present(alert, animated: true)
    
    }
    func usingActionSheet()
    {
        
        let alertActionSheet = UIAlertController(title: "Are You Sure?", message: "It's Message", preferredStyle: .actionSheet)
        let action = UIAlertAction(title: "Cancel", style: .cancel)
        let action1 = UIAlertAction(title: "Default", style: .default)
        let action2 = UIAlertAction(title: "Delete", style: .destructive)
        
        alertActionSheet.addAction(action)
        alertActionSheet.addAction(action1)
        alertActionSheet.addAction(action2)
        
        present(alertActionSheet, animated: true)
    }
}
