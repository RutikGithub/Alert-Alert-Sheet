//
//  SecondViewController.swift
//  AlertTwentyNinePractical
//
//  Created by Mac on 28/04/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var secondTableView: UITableView!
    
       
    var container:Student?
    var students=[Student]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondTableView.dataSource = self
        //secondTableView.delegate = self
        convertData()
        secondTableView.reloadData()
    }
     func convertData()
    {
        let fnamelbl = container?.firstName
        let lnamelbl = container?.lastName
        let add = container?.address
        let email = container?.emailId
        let mobno = container?.mobileNumber
        
        students.append(Student(firstName: fnamelbl!, lastName: lnamelbl!, address: add!, emailId: email!, mobileNumber: mobno!))

    }
    
}
extension SecondViewController:UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cellData = self.secondTableView.dequeueReusableCell(withIdentifier: "SecondTableViewCell", for: indexPath) as? SecondTableViewCell
        
        
        
        
        cellData?.firstNameLabel.text = students[indexPath.row].firstName
        cellData?.lastNameLabel.text = students[indexPath.row].lastName
        cellData?.addressLabel.text = students[indexPath.row].address
        cellData?.emailIdLabel.text = students[indexPath.row].emailId
        cellData?.mobileNumberLabel.text = String(students[indexPath.row].mobileNumber)
        
        return cellData!
        
    }
    
    
}
