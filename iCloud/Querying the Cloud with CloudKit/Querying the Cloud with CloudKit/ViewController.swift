//
//  ViewController.swift
//  Querying the Cloud with CloudKit
//
//  Created by Domenico on 29/05/15.
//  License MIT
//

import UIKit
import CloudKit

class ViewController: UIViewController {

    let database = CKContainer.defaultContainer().privateCloudDatabase
    lazy var operationQueue = NSOperationQueue()
    
    /* Defines our car types */
    enum CarType: String{
        case Estate = "Estate"
        
        func zoneId() -> CKRecordZoneID{
            let zoneId = CKRecordZoneID(zoneName: self.rawValue,
                ownerName: CKOwnerDefaultName)
            return zoneId
        }
        
    }
    
    /* Checks if the user has logged into her iCloud account or not */
    func isIcloudAvailable() -> Bool{
        if let token = NSFileManager.defaultManager().ubiquityIdentityToken{
            return true
        } else {
            return false
        }
    }
    
    /* Just a little method to help us display alert dialogs to the user */
    func displayAlertWithTitle(title: String, message: String){
        let controller = UIAlertController(title: title,
            message: message,
            preferredStyle: .Alert)
        
        controller.addAction(UIAlertAction(title: "OK",
            style: .Default,
            handler: nil))
        
        presentViewController(controller, animated: true, completion: nil)
        
    }
}
