//
//  ProjectsController.swift
//  solar
//
//  Created by Efat Ahmed on 7/30/18.
//  Copyright © 2018 Efat Ahmed. All rights reserved.
//

import UIKit

class ProjectsListsController: UIViewController {

    
    let username:String = "salimonline";
    let page:Int = 1;
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.loadData();
        
        // Do any additional setup after loading the view.
    }
    
    func loadData(){
        //call rest api
        
        print("aasfdhgasfdgh");
        
    }

    override func viewWillAppear(_ animated: Bool) {
        
        //print("viewWillAppear")
    }
    override func viewDidAppear(_ animated: Bool) {
        //print("viewDidAppear")
    }
    override func viewWillDisappear(_ animated: Bool) {

        //print("will end")
    }
    override func viewDidDisappear(_ animated: Bool) {
        //print("end")
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
