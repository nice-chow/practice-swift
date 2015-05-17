//
//  PersonsListTableViewController.swift
//  Boosting Data Access in Table Views
//
//  Created by Domenico Solazzo on 17/05/15.
//  License MIT
//

import UIKit
import CoreData

class PersonsListTableViewController: UITableViewController, NSFetchedResultsControllerDelegate {

    struct TableConstants{
        static let cellIdentifier = "Cell"
    }
    
    //- MARK: Private variables
    var barButtonAddPerson: UIBarButtonItem!
    var frc: NSFetchedResultsController!
}
