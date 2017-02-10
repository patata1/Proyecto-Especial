//
//  RegisterViewController.swift
//  Nightmares
//
//  Created by Carlos De diego on 14/1/17.
//  Copyright © 2017 quality. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {



    @IBOutlet weak var fondo: UIImageView!
    @IBOutlet weak var aliasLabel: UILabel!
    @IBOutlet weak var mailLabel: UILabel!
    @IBOutlet weak var passLabel: UILabel!
    @IBOutlet weak var repeatPassLabel: UILabel!
    @IBOutlet weak var aliasField: UITextField!
    @IBOutlet weak var mailField: UITextField!
    @IBOutlet weak var passField: UITextField!
    @IBOutlet weak var repeatPassField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var profileImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //To obtain an eye form change the image width to 240 & height to 128
        aliasField.attributedPlaceholder = NSAttributedString(string: "Introduce Alias", attributes: [NSForegroundColorAttributeName: UIColor.grayColor()])
        mailField.attributedPlaceholder = NSAttributedString(string: "Introduce Email", attributes: [NSForegroundColorAttributeName: UIColor.grayColor()])
        passField.attributedPlaceholder = NSAttributedString(string: "Introduce Contraseña", attributes: [NSForegroundColorAttributeName: UIColor.grayColor()])
        repeatPassField.attributedPlaceholder = NSAttributedString(string: "Repita Contraseña", attributes: [NSForegroundColorAttributeName: UIColor.grayColor()])
        
        
        // Change the image form into a circle
        
        self.profileImageView.layer.cornerRadius = self.profileImageView.frame.size.width / 2
        self.profileImageView.clipsToBounds = true
        self.profileImageView.layer.borderColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1.0).CGColor
        self.profileImageView.layer.borderWidth = 2
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func gotoMain()
    {
        let vc :TabBarController = storyboard!.instantiateViewControllerWithIdentifier("TabBarController") as! TabBarController
        //let modalStyle = UIModalTransitionStyle.PartialCurl
        //vc.modalTransitionStyle = modalStyle
        self.presentViewController(vc, animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func dismissVC2() //Vuelve al viewController
    {
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
}
