//
//  PhotoAdapter.swift
//  solar
//
//  Created by Efat Ahmed on 8/2/18.
//  Copyright © 2018 Efat Ahmed. All rights reserved.
//

import UIKit

class PhotoAdapter: UITableViewCell {

    
    var getPhoto:Photo?;
    
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var textTitle: UILabel!
    
    
    
    
    
    
    
    
    

    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
