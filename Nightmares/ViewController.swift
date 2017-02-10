//
//  ViewController.swift
//  Nightmares
//
//  Created by alumnos on 12/1/17.
//  Copyright © 2017 quality. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backgroundIMG: UIImageView!
    @IBOutlet weak var viewName: UIView!
    @IBOutlet weak var titleName: UILabel!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func controladorSlides(sender: UISwipeGestureRecognizer)
    {
        if(sender.direction == .Left)
        {
            tabBarController?.selectedIndex = 1
            animateToTab(2, onTabBar: tabBarController!, se: self)
        }
        else if(sender.direction == .Right)
        {
            
            tabBarController?.selectedIndex = 1
            animateToTab(0, onTabBar: tabBarController!, se: self)
        }
        
    }


}

