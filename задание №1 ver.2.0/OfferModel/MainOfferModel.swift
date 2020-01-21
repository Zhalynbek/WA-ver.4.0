//
//  MainOfferModel.swift
//  задание №1 ver.2.0
//
//  Created by metr1ckzu on 24/11/2019.
//  Copyright © 2019 Эралиев Жалынбек. All rights reserved.
//

import Foundation

class MainOfferModel:Codable {
    var temp:Float
    var temp_min:Float?
    var temp_max:Float?
    var pressure:Float?
    var sea_level:Float?
    var grnd_level:Float?
    var humidity:Float?
    var temp_kf:Float?
}
