//
//  UIViewController+SAM.swift
//  SAM
//
//  Created by Marcos on 8/12/15.
//  Copyright (c) 2015 Marcos Garcia. All rights reserved.
//

import UIKit

let kStringViewController = "SAMReusableViewController"
let kStringTableViewController = "SAMReusableTableViewController"
let kStringSubViewController = "SAMReusableSubViewController"

extension UIViewController
{
    func presentSAMController (viewControllerType: String)
    {
        var vc = UIViewController()
        var controller = ""
        if viewControllerType == "UIView"
        {
            controller = kStringViewController
            vc = SAMReusableViewController(nibName: controller, bundle: nil)
        }
        else if viewControllerType == "tableView"
        {
            controller = kStringTableViewController
            vc = SAMReusableTableViewController(nibName: controller, bundle: nil)
        }
        else if viewControllerType == "subView"
        {
            controller = kStringTableViewController
            vc = SAMReusableViewController(nibName: controller, bundle: nil)
        }
        self.showSAMControllerInView(vc)
    }
    
    func showSAMControllerInView (vc: UIViewController)
    {
        var navController = UINavigationController()
        navController = UINavigationController(rootViewController: vc)
        self.presentViewController(navController, animated: true, completion: nil)
    }
    
    func popToRoot(sender:UIBarButtonItem){
        //self.navigationController.popToRootViewControllerAnimated(true)
    }
    
}
