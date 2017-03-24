//
//  Recipe.swift
//  Producto
//
//  Created by Isaac López on 24/03/17.
//  Copyright © 2017 medicalia. All rights reserved.
//

import Foundation
import UIKit

class Recipe : NSObject{
    var name : String!
    var phone : String!
    var image : UIImage!
    var address : String!
    var review : String!
    
    init(name:String, phone:String, image:UIImage, address:String, review:String) {
        self.name = name
        self.phone = phone
        self.image = image
        self.address = address
        self.review = review
        
    }

}
