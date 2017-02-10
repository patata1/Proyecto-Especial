//
//  ZeroViewController.swift
//  Nightmares
//
//  Created by alumnos on 13/1/17.
//  Copyright © 2017 quality. All rights reserved.
//

import UIKit
import SpriteKit

class ZeroViewController: UIViewController, UITabBarControllerDelegate, UITabBarDelegate{

    @IBOutlet weak var backgroundIMG: UIImageView!
    @IBOutlet weak var viewName: UIView!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        tabBarController?.delegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func controladorSlides(sender: UISwipeGestureRecognizer)
    {
        if(sender.direction == .Left)
        {
            print("HEy")
            tabBarController?.selectedIndex = 0
            animateToTab(1, onTabBar: tabBarController!, se: self)
        }
        else if(sender.direction == .Right)
        {
      

        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
