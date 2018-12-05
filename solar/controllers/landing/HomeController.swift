//
//  HomeController.swift
//  solar
//
//  Created by Efat Ahmed on 7/30/18.
//  Copyright © 2018 Efat Ahmed. All rights reserved.
//

import UIKit

class HomeController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    var photos:[Photo] = [];
    @IBOutlet weak var photosView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.photosView.allowsSelection = false;
        self.loadData();
    }
    
    
    func loadData(){
        //load home data
        let myUrl:String = "\(restCall)photos";
        guard let fMyUrl = URL.init(string: myUrl) else { return }
        
        
        var myRequest = URLRequest(url: fMyUrl);
        //myRequest.setValue("adghfashdgf23654gsfdhgsafd", forHTTPHeaderField: "api_key")
        myRequest.httpMethod = "GET";
        
        
        
//        let jsonTodo =  "username=\(finalUsername)&password=\(finalPassword)&deviceType=\(deviceType)&deviceId=\(deviceId)";
//        myRequest.httpBody = jsonTodo.data(using: .utf8)!;
        
        
        URLSession.shared.dataTask(with: myRequest) {
            (resData, response, error) in

            
            ///
            guard error == nil else { print(error); return }
            do {
                if let getMyResData = resData {
                    let resObject = try JSONDecoder().decode([Photo].self,from : getMyResData);
                    self.photos = resObject;
                    DispatchQueue.main.async {
                        self.photosView.reloadData();
                    }
                }
                
              
            }catch { return  }
            ///
            

            
            
       }.resume();
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("PhotoAdapter", owner: self, options: nil)?.first as! PhotoAdapter;
        let photoObject:Photo = self.photos[indexPath.row];
        cell.getPhoto = photoObject;
        
        if let getPhotoTiltle = photoObject.title {
            cell.textTitle.text = getPhotoTiltle;
            
            cell.textTitle.textColor = setColor(hex: "#666666")
        }
        
        if let getPhoto = photoObject.thumbnailUrl {
            //cell.photo.image = U
            cell.photo.setImageFromURl(imageUrl: getPhoto);
        }
        
        
        
        
        
        
        
        
        
        
        
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == self.photosView {
            return photos.count;
        }else{
            return 10;
        }
        
        
    }

    
    
    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
