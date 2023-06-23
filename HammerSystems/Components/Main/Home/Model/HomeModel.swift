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

struct Categories {
    var title: String
    
    static func fetch() -> [Categories]{
        var c1 = Categories(title: "Пицца")
        var c2 = Categories(title: "Комбо")
        var c3 = Categories(title: "Десерты")
        var c4 = Categories(title: "Напитки")
        return [c1,c2,c3,c4]
    }
}


