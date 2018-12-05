//
//  Photo.swift
//  solar
//
//  Created by Efat Ahmed on 7/30/18.
//  Copyright © 2018 Efat Ahmed. All rights reserved.
//

import UIKit

struct Photo : Decodable{
    let albumId:Int?;
    let id:Int?;
    let title:String?;
    let url:String?;
    let thumbnailUrl:String?;
}
