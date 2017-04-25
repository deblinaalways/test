//
//  AddPersonTableViewController.swift
//  MVVMRealmSwift
//
//  Created by Deblina Das on 25/04/17.
//  Copyright © 2017 Deblina Das. All rights reserved.
//

import Foundation
import UIKit
import RealmSwift

class AddPersonTableViewController: UITableViewController {
    
    @IBOutlet var nameField: UITextField!
    @IBOutlet var phoneNumber: UITextField!
    @IBOutlet var carCount: UILabel!
    
    // MARK: Factory Method
    class func viewController() -> AddPersonTableViewController {
        return UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AddPersonTableViewController") as! AddPersonTableViewController
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    
    @IBAction func addCar(_ sender: UIButton) {
    }
    
    @IBAction func savePerson(_ sender: UIBarButtonItem) {
        savePersonAndPop() {
            DispatchQueue.main.async { self.navigationController?.popViewController(animated: true) }
        }
    }
    
    private func savePersonAndPop(completion: () -> Void) {
        if isValidData() {
            
          completion()
        }
    }
    
    private func isValidData() -> Bool {
        return !nameField.text!.isEmpty && !phoneNumber.text!.isEmpty
    }
}

extension AddPersonTableViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
}
