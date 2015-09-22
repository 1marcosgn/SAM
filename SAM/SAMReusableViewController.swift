//
//  SAMReusableViewController.swift
//  SAM
//
//  Created by Marcos on 9/21/15.
//  Copyright © 2015 Marcos Garcia. All rights reserved.
//

import UIKit

class SAMReusableViewController: UIViewController
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
}