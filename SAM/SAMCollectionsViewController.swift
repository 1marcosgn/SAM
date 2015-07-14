//
//  SAMCollectionsViewController.swift
//  SAM
//
//  Created by Garcia, Marcos on 7/13/15.
//  Copyright (c) 2015 Marcos Garcia. All rights reserved.
//

import UIKit

class SAMCollectionsViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let leftButtonItem = UIBarButtonItem(image: UIImage(named: "menuIcon"), style: UIBarButtonItemStyle.Plain, target: self, action: "showMenu:")
        self.navigationItem.leftBarButtonItem = leftButtonItem
        self.navigationItem.title = "Collections"
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
    
    func showMenu(sender: UIBarButtonItem){
        self.slideMenuController()?.openLeft()
    }
    
}
