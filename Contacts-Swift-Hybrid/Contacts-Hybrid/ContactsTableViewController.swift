//
//  ContactsTableViewController.swift
//  Contacts-Hybrid
//
//  Created by Paul Solt on 12/16/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import UIKit

// Swift (model) -> Objective C (model conroller) -> Swift (table view)
class ContactsTableViewController: UITableViewController {
	
    
    let contatcsController = LSIContactController()
    
    
	override func viewDidLoad() {
		super.viewDidLoad()
		
        tableView.reloadData()
		
	}
	
	
	// MARK: UITableViewDataSource methods
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // TODO: Implement controller count
        return contatcsController.contacts.count
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath)
        
        // TODO: Implement display logic
         let contact = contatcsController.contacts[indexPath.row]
        
        cell.textLabel?.text = contact.name
        cell.detailTextLabel?.text = contact.relationship
		
		return cell
	}

}
