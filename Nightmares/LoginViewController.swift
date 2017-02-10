//
//  LoginViewController.swift
//  Nightmares
//
//  Created by alumnos on 12/1/17.
//  Copyright © 2017 quality. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var guestButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var fondoLogin: UIView!
  
    
    override func viewDidLoad()
    {
        
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func gotrueLogin()
    {

        let vc :FinalLoginViewController = storyboard!.instantiateViewControllerWithIdentifier("FinalLoginViewController") as! FinalLoginViewController
        let modalStyle = UIModalTransitionStyle.CrossDissolve
        vc.modalTransitionStyle = modalStyle
        self.presentViewController(vc, animated: true, completion: nil)
    }
    
    
    @IBAction func gotoMain()
    {
        let vc :TabBarController = storyboard!.instantiateViewControllerWithIdentifier("TabBarController") as! TabBarController
        let modalStyle = UIModalTransitionStyle.CrossDissolve
        vc.modalTransitionStyle = modalStyle
        self.presentViewController(vc, animated: true, completion: nil)
    }
    
    @IBAction func goRegister()
    {

        let vc :RegisterViewController = storyboard!.instantiateViewControllerWithIdentifier("RegisterViewController") as! RegisterViewController
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

    
    func prepareforUnWind(unwindSegue: UIStoryboardSegue)
    {
        
    }
    

}
