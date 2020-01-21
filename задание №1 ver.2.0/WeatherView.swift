//
//  WeatherView.swift
//  задание №1 ver.2.0
//
//  Created by metr1ckzu on 30/11/2019.
//  Copyright © 2019 Эралиев Жалынбек. All rights reserved.
//

import Foundation
import UIKit

class WeatherView:UIView {
    var tableView = UITableView()
    
    override class func awakeFromNib() {
        
        super.awakeFromNib()
        
    }
    
    fileprivate func firstInitialization() {
        self.addSubview(tableView)
    }
    
    fileprivate func setupcConstraints(){
        self.tableView.translatesAutoresizingMaskIntoConstraints = false
        
        self.tableView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        self.tableView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        self.tableView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        self.tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
}
