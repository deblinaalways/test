//
//  TestTableViewController.swift
//  MVVMRealmSwift
//
//  Created by Deblina Das on 26/04/17.
//  Copyright © 2017 Deblina Das. All rights reserved.
//

import Foundation
import UIKit
import RealmSwift

class TestTableViewController: UITableViewController {
    
    fileprivate var persons: Results<Person>!
    
    // MARK: Factory Method
    class func navigate() -> UINavigationController {
        return UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PersonTableNavigationController") as! UINavigationController
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        readPersons()
        self.tableView.reloadData()
    }
    
    private func readPersons() {
        persons = realm.objects(Person.self)
    }
    
    func initPersonViewModel(_ person: Person) -> PersonViewModel {
        return PersonViewModel(person: person)
    }
    @IBAction func addPersonButtonTapped(_ sender: UIBarButtonItem) {
        self.navigationController?.pushViewController(AddPersonTableViewController.viewController(), animated: true)
    }
    
}

extension TestTableViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let personCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let person = initPersonViewModel(persons[indexPath.row])
        personCell.textLabel?.text = person.fullName
        personCell.detailTextLabel?.text = person.phoneNumberText
        return personCell
    }
}

