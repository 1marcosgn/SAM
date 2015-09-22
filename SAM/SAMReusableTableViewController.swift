//
//  SAMReusableTableViewController.swift
//  SAM
//
//  Created by Marcos on 9/16/15.
//  Copyright © 2015 Marcos Garcia. All rights reserved.
//

import UIKit

class SAMReusableTableViewController: UITableViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let leftButtonItem = UIBarButtonItem(image: UIImage(named: "menuIcon"), style: UIBarButtonItemStyle.Plain, target: self, action: "pop_ToRoot")
        self.navigationItem.leftBarButtonItem = leftButtonItem
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    func pop_ToRoot()
    {
        self.slideMenuController()?.openLeft()
    }

    // MARK: - Table view data source
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 0
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 0
    }
}
