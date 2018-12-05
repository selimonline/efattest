//
//  LandingController.swift
//  solar
//
//  Created by Efat Ahmed on 7/30/18.
//  Copyright © 2018 Efat Ahmed. All rights reserved.
//

import UIKit

class LandingController: UIViewController {

    
    
    
    
    @IBOutlet weak var pageHeadng: UILabel!
    
    @IBOutlet weak var solarImage: UIImageView!
    

    @IBAction func loginButttonCliked(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "SolarMain", bundle: nil);
        //let toVC = self.storyboard?.instantiateViewController(withIdentifier: "LoginControllerID") as! LoginController;
        let toVC = storyBoard.instantiateViewController(withIdentifier: "LoginControllerID") as! LoginController;
        toVC.myvariable = "ami ami";
        self.present(toVC, animated: false);
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.loadData();
        
        self.pageHeadng.text = "Efat Ahmed";
        self.pageHeadng.textColor = UIColor.white;
        
        self.solarImage.image = UIImage(named: "solar2");
        
        // Do any additional setup after loading the view.
    }
    
    func loadData(){
        //call rest api
        
        print("aasfdhgasfdgh");
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
