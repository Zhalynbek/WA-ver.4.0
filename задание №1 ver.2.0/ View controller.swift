//
//  ViewController.swift
//  задание №1 ver.2.0
//
//  Created by metr1ckzu on 19/11/2019.
//  Copyright © 2019 Эралиев Жалынбек. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UISearchResultsUpdating, UITableViewDataSource {
    
    fileprivate var contentView:WeatherView {
        return self.view as! WeatherView
    }
    
    var timer = Timer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self .setupNavigationBar()
        self .contentView.tableView.dataSource = self
    }
    fileprivate func setupNavigationBar() {
        self.navigationItem.title = "Weather Application"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        let searchController = UISearchController(searchResultsController: nil)
        searchController.searchResultsUpdater = self
        
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
    }
    func updateSearchResults(for searchController: UISearchController) {
        let city = searchController.searchBar.text!
        timer.invalidate()
        if city.count > 1 {
            timer = Timer.scheduledTimer(withTimeInterval: 2, repeats: false, block: {(timer) in
            networkmenedger.shared.getWeather(city: city, result: { (model) in
                for list in model!.list! {
                    
                }
            })
        })
    }
}
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 0
    }


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
