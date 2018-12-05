//
//  helper.swift
//  solar
//
//  Created by Efat Ahmed on 8/2/18.
//  Copyright © 2018 Efat Ahmed. All rights reserved.
//

import UIKit

let restCall = "https://jsonplaceholder.typicode.com/";

extension UIImageView{
    func setImageFromURl(imageUrl url: String){
        let url = URL(string: url)!;
        image = nil;
        let myRequest = URLRequest(url: url);
        URLSession.shared.dataTask(with: myRequest) {
            (resData, response, error) in
            if error != nil{ return; }
            DispatchQueue.main.async {
                self.image = UIImage(data : resData!);
            }
            }.resume();
    }
}


func setColor (hex:String) -> UIColor {
    var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
    
    if (cString.hasPrefix("#")) {
        cString.remove(at: cString.startIndex)
    }
    
    if ((cString.count) != 6) {
        return UIColor.gray
    }
    
    var rgbValue:UInt32 = 0
    Scanner(string: cString).scanHexInt32(&rgbValue)
    
    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0)
    )
}

extension UIColor {
    convenience init(hex: Int) {
        let components = (
            R: CGFloat((hex >> 16) & 0xff) / 255,
            G: CGFloat((hex >> 08) & 0xff) / 255,
            B: CGFloat((hex >> 00) & 0xff) / 255
        )
        self.init(red: components.R, green: components.G, blue: components.B, alpha: 1)
    }
    
}
