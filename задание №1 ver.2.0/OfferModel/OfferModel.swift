//
//  OfferModel.swift
//  задание №1 ver.2.0
//
//  Created by metr1ckzu on 24/11/2019.
//  Copyright © 2019 Эралиев Жалынбек. All rights reserved.
//

import Foundation

class OfferModel:Codable {
    var cod:String?
    var message:Float?
    var cnt:Float?
    var list:[ListOfferModel]?
    var city:CityModel?
    var weather:WeatherOfferModel?
    var clouds:cloudsModel
    var wind:windModel
    var snow:snowModel
    var sys:sysModel
}
