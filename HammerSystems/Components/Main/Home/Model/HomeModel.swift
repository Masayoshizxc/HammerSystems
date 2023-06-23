//
//  HomeModel.swift
//  HammerSystems
//
//  Created by Adilet on 23/6/23.
//

import UIKit

struct Pizza {
    var img: UIImage
    var title: String
    var description: String
    var price: String
}

struct Banner {
    var img: UIImage
    
    static func fetch() -> [Banner]{
        var _1 = Banner(img: UIImage(named: "30")!)
        var _2 = Banner(img: UIImage(named: "pizza")!)
        return [_1,_2]
    }
}


