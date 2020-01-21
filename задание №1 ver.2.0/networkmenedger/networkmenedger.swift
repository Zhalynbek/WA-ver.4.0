//
//  networkmenedger.swift
//  задание №1 ver.2.0
//
//  Created by metr1ckzu on 24/11/2019.
//  Copyright © 2019 Эралиев Жалынбек. All rights reserved.
//

import Foundation

class networkmenedger {
    private init(){}
    
    static let shared:networkmenedger = networkmenedger()
    
    func getWeather(city:String, result: @escaping ((OfferModel?) -> ())){
        var urlComponents = URLComponents()
        urlComponents.scheme = "https"
        urlComponents.host = "api.openweathermap.org"
        urlComponents.path = "/data/2.5/forecast"
        urlComponents.queryItems = [URLQueryItem(name: "q", value: city),
                                    URLQueryItem(name: "Appid", value:"e8cfd3e9c027919522faa137adc8287c")]
        
        var request = URLRequest(url: urlComponents.url!)
        request.httpMethod = "GET"
        
        let task = URLSession(configuration: .default)
        task.dataTask(with: request) { (data, response, error) in
            if error == nil {
                let decoder = JSONDecoder()
                var decoderOfferModel:OfferModel?
                
                if data != nil {
                    decoderOfferModel = try? decoder.decode(OfferModel.self, from: data!)
                }
                result(decoderOfferModel)
            } else {
                print(error as Any)
                
            }
        }.resume()
    }
}
