//
//  SAMMenuViewController.swift
//  SAM
//
//  Created by Garcia, Marcos on 7/13/15.
//  Copyright (c) 2015 Marcos Garcia. All rights reserved.
//

import UIKit

class SAMMenuViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "SAM"
        
        self.getMenuElements()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 0
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return 0
    }
    
    func getMenuElements() -> NSArray{
        
        let path = NSBundle.mainBundle().pathForResource("Menu", ofType: "plist")
        let dictionary = NSDictionary(contentsOfFile: path!)
        let arrMenu = dictionary?.objectForKey("MenuElements") as? NSArray
        
        return arrMenu!
        
    }

}
