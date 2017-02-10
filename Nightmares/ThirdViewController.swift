//
//  ThirdViewController.swift
//  Nightmares
//
//  Created by alumnos on 12/1/17.
//  Copyright © 2017 quality. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var backgroundIMGT: UIImageView!
    @IBOutlet weak var viewName: UIView!
    @IBOutlet weak var titleName: UILabel!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func controladorSlides(sender: UISwipeGestureRecognizer)
    {
        if(sender.direction == .Left)
        {
            tabBarController?.selectedIndex = 3
            animateToTab(4, onTabBar: tabBarController!, se: self)
        }
        else if(sender.direction == .Right)
        {
            
            tabBarController?.selectedIndex = 3
            animateToTab(2, onTabBar: tabBarController!, se: self)
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
