//
//  ViewController.swift
//  NSFetchRequest
//
//  Created by Randall Mardus on 2/11/16.
//  Copyright © 2016 Randall Mardus. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    let managedObjectContext = NSManagedObjectContext(concurrencyType:NSManagedObjectContextConcurrencyType.MainQueueConcurrencyType)
        
        let requestToTheGreatBaseballDatabaseInTheSky = NSFetchRequest(entityName: "Baseball-Reference.com")
        
        let whoIsTheFairestOfThemAll = NSPredicate(format: "name = Ty")
        
        requestToTheGreatBaseballDatabaseInTheSky.predicate = whoIsTheFairestOfThemAll
        print("Not the Georgia Peach.")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

