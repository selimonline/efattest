//
//  ImageController.swift
//  solar
//
//  Created by Efat Ahmed on 8/2/18.
//  Copyright © 2018 Efat Ahmed. All rights reserved.
//

import UIKit

class ImageController: UIViewController {

    
    
    
    
    @IBOutlet weak var ImagesView: UITableView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

         self.loadData();
    }

    func loadData(){
        
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
