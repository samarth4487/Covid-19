//
//  CountryWiseViewController.swift
//  Covid-19
//
//  Created by Samarth Paboowal on 28/03/20.
//  Copyright © 2020 Samarth. All rights reserved.
//

import UIKit

class CountryWiseViewController: UITableViewController {

    var countryData: [Country]?
    let countryCellReuseIdentifier = "countryCellReuseIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.separatorStyle = .singleLine
        tableView.register(CountryCell.self, forCellReuseIdentifier: countryCellReuseIdentifier)
        navigationItem.title = "Countries"
        fetchCountryData()
    }
    
    fileprivate func fetchCountryData() {
        
        WebService.shared.fetchCountryWiseData(url: URL(string: WebService.APIEndpoint.countryWise)!) { [weak self] (result) in
            
            switch result {
            case .success(let countryData):
                self?.countryData = countryData
                DispatchQueue.main.async {
                    self?.tableView.reloadData()
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let data = countryData else { return 0 }
        return data.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: countryCellReuseIdentifier, for: indexPath) as! CountryCell
        
        if let data = countryData {
            let country = data[indexPath.row]
            cell.configureCell(country)
        }

        return cell
    }

}
