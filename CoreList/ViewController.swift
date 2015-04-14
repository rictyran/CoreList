//
//  ViewController.swift
//  CoreList
//
//  Created by Richard Tyran on 2/24/15.
//  Copyright (c) 2015 Richard Tyran. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    @IBOutlet var itemName: UITextField!
    
    @IBAction func saveItem(sender: AnyObject) {
        
        let applicationDelegate: AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        
        var postObject = NSEntityDescription.insertNewObjectForEntityForName("Items", inManagedObjectContext: applicationDelegate.managedObjectContext!) as NSManagedObject
        
        
        postObject.setValue(itemName.text, forKey: "name")
        postObject.setValue(NSDate(), forKey: "created")
        postObject.setValue(false, forKey: "completed")
        
        applicationDelegate.saveContext()
        
        dismissViewControllerAnimated(true, completion: nil)
        
        // save item to core data
        
    }
    
    @IBAction func cancelItem(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

