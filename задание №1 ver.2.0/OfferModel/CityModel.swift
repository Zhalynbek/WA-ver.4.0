//
//  CityModel.swift
//  задание №1 ver.2.0
//
//  Created by metr1ckzu on 24/11/2019.
//  Copyright © 2019 Эралиев Жалынбек. All rights reserved.
//

import Foundation
class CityModel:Codable   {
    var id:Float?
    var name:String?
    class coord: CityModel {
        var lat:Float?
        var lot:Float?
    }
    var country:String?
    var population:Float?
    var sunrise:Float?
    var timezone:Float?
    var sunset:Float?

    }

