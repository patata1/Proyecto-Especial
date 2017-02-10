//
//  SecondViewController.swift
//  Nightmares
//
//  Created by alumnos on 12/1/17.
//  Copyright © 2017 quality. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var backGroundIMG: UIImageView!
    @IBOutlet var viewName: UIView!
    @IBOutlet weak var titleName: UILabel!
    @IBOutlet weak var higherSelector: UISegmentedControl!
    @IBOutlet weak var logOutButton: UIButton!
    @IBOutlet weak var aliasLabel: UILabel!
    @IBOutlet weak var mailLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var aliasTextField: UITextField!
    @IBOutlet weak var mailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var profileimage: UIImageView!
    @IBOutlet weak var unlockAlias: UIButton!
    @IBOutlet weak var unlockMail: UIButton!
    @IBOutlet weak var unlockPassword: UIButton!
    @IBOutlet weak var marcoIMGProfile: UIImageView!

    @IBOutlet weak var viewYOURINFO: UIView!
    
    override func viewDidLoad() {
        
        /*self.profileimage.layer.cornerRadius = self.profileimage.frame.size.width / 2;
        self.profileimage.clipsToBounds = true;
        self.profileimage.layer.borderColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1.0).CGColor
        self.profileimage.layer.borderWidth = 2*/
        
        super.viewDidLoad()
        
        aliasTextField.attributedPlaceholder = NSAttributedString(string: "Tu Alias", attributes: [NSForegroundColorAttributeName: UIColor.grayColor()])
        mailTextField.attributedPlaceholder = NSAttributedString(string: "Tu Email", attributes: [NSForegroundColorAttributeName: UIColor.grayColor()])
        passwordTextField.attributedPlaceholder = NSAttributedString(string: "Tu Contraseña", attributes: [NSForegroundColorAttributeName: UIColor.grayColor()])
        
        
        aliasTextField.enabled = false
        mailTextField.enabled = false
        passwordTextField.enabled = false
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func indexChanged(sender: UISegmentedControl)
    {
        switch higherSelector.selectedSegmentIndex
            
        {
        case 0:
            
            viewYOURINFO.hidden = false
            aliasTextField.enabled = false
            mailTextField.enabled = false
            passwordTextField.enabled = false
            
        case 1:
            
            viewYOURINFO.hidden = true
            
            aliasTextField.enabled = false
            mailTextField.enabled = false
            passwordTextField.enabled = false

            
        case 2:
            
            viewYOURINFO.hidden = true
            
            aliasTextField.enabled = false
            mailTextField.enabled = false
            passwordTextField.enabled = false

            
        default:
            break
        }
    }
    
    @IBAction func UnlockAlias ()
    {
        if(unlockAlias.enabled == true)
        {
            aliasTextField.enabled = true
        }
        else
        {
             aliasTextField.enabled = false
        }
    }
    
    @IBAction func UnlockMail ()
    {
        if(unlockMail.enabled == true)
        {
             mailTextField.enabled = true
        }
        else
        {
             mailTextField.enabled = false
        }
    }
    
    @IBAction func UnlockPassword ()
    {
        if(unlockPassword.enabled == true)
        {
            passwordTextField.enabled = true
        }
        else
        {
            passwordTextField.enabled = false
        }
    }
    
    
    @IBAction func controladorSlides(sender: UISwipeGestureRecognizer)
    {
        if(sender.direction == .Left)
        {
            tabBarController?.selectedIndex = 2
            animateToTab(3, onTabBar: tabBarController!, se: self)
        }
        else if(sender.direction == .Right)
        {
            
            tabBarController?.selectedIndex = 2
            animateToTab(1, onTabBar: tabBarController!, se: self)
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
