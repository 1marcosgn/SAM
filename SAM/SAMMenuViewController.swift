//
//  SAMMenuViewController.swift
//  SAM
//
//  Created by Garcia, Marcos on 7/13/15.
//  Copyright (c) 2015 Marcos Garcia. All rights reserved.
//

import UIKit

var arrayMenu = []

class SAMMenuViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //self.navigationItem.title = "SAM"
        arrayMenu = self.getMenuElements()
        
        self.tableView.backgroundColor = UIColor(red: 220/255, green: 217/255, blue: 213/255, alpha: 1.0)
        self.tableView.separatorStyle = UITableViewCellSeparatorStyle.None
        
        //Navigation bar color
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1.0)
        //self.navigationController?.navigationBar.barStyle = UIBarStyle.Black
        
        var titleView : UIImageView
        // set the dimensions you want here
        titleView = UIImageView(frame:CGRectMake(0, 0, 44, 44))
        // Set how do you want to maintain the aspect
        titleView.contentMode = .ScaleAspectFit
        //titleView.image = UIImage(named: "samLogo")
        
        self.navigationItem.titleView = titleView
        
        
        //self.navigationController?.navigationItem.titleView = titleView

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayMenu.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "menuCell")
        
        cell.textLabel?.text = arrayMenu[indexPath.row] as? String
        
        
        cell.backgroundColor = UIColor(red: 220/255, green: 217/255, blue: 213/255, alpha: 1.0)
        cell.textLabel?.textColor = UIColor.blackColor()
        
        cell.textLabel?.font = UIFont(name: "GillSans-Bold", size: 25.0)
        
        
        
        let selectedView = UIView()
        selectedView.backgroundColor = UIColor.blackColor()
        cell.selectedBackgroundView = selectedView
        
        cell.textLabel?.highlightedTextColor = UIColor.whiteColor()
        
        return cell
        
        
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 63.0
    }
    
    
    
    
    func getMenuElements() -> NSArray{
        
        let path = NSBundle.mainBundle().pathForResource("Menu", ofType: "plist")
        let dictionary = NSDictionary(contentsOfFile: path!)
        let arrMenu = dictionary?.objectForKey("MenuElements") as? NSArray
        
        return arrMenu!
        
    }
    
    
    

}
