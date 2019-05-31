//
//  TableViewController.swift
//  Debt
//
//  Created by Mac User on 21/05/2019.
//  Copyright © 2019 Jemmm. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController,UITextFieldDelegate  {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var sum: UITextField!
    @IBOutlet weak var dataOut: UIDatePicker!
    @IBOutlet weak var dateIn: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.name.delegate = self
        self.lastName.delegate = self
        self.sum.delegate = self
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done , target: self, action: #selector(selectorBarButtonItem (paramSender:)))
    }

    //MARK: - Method
    
    //нужно дать работу кнопке, что бы данные сохранялись
    
    @objc func selectorBarButtonItem (paramSender: Any){
        self.navigationController?.popViewController(animated: true)
    }
    
    //MARK: - textFieldDelegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.name.resignFirstResponder()
        self.lastName.resignFirstResponder()
        self.sum.resignFirstResponder()
        return true
        
    }
    

}
