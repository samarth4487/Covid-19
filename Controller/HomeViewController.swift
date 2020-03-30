//
//  HomeViewController.swift
//  Covid-19
//
//  Created by Samarth Paboowal on 26/03/20.
//  Copyright © 2020 Samarth. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, HomeBottomContainerViewDelegate {
    
    var topContainerView: HomeTopContainerView!
    var middleContainerView: HomeMiddleContainerView!
    var bottomContainerView: HomeBottomContainerView!

    var worldWideData: WorldWideData!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationItem.title = "Home"
        navigationController?.navigationBar.isTranslucent = false
        edgesForExtendedLayout = []
        fetchHomeData()
    }
    
    fileprivate func fetchHomeData() {
        
        WebService.shared.fetchHomeData(url: URL(string: WebService.APIEndpoint.home)!) { [weak self] (result) in
            
            switch result {
            case .success(let worldWideData):
                self?.worldWideData = worldWideData
                DispatchQueue.main.async {
                    self?.layoutViews()
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    fileprivate func layoutViews() {
        
        topContainerView = HomeTopContainerView(totalCases: worldWideData.confirmed ?? -1, closedCases: worldWideData.closed ?? -1, activeCases: worldWideData.active ?? -1, closedCasesPercentage: worldWideData.closedPercentage ?? -1, activeCasesPercentage: worldWideData.activePercentage ?? -1)
        view.addSubview(topContainerView)
        topContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        topContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        topContainerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        topContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.45).isActive = true
        
        bottomContainerView = HomeBottomContainerView(delegate: self)
        view.addSubview(bottomContainerView)
        bottomContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        bottomContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        bottomContainerView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        bottomContainerView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
        
        middleContainerView = HomeMiddleContainerView(closedCases: worldWideData.closed ?? -1, recovered: worldWideData.recovered ?? -1, deaths: worldWideData.deaths ?? -1, recoveredPercentage: worldWideData.recoveredPercentage ?? -1, deathPercentage: worldWideData.deathPercentage ?? -1)
        view.addSubview(middleContainerView)
        middleContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        middleContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        middleContainerView.topAnchor.constraint(equalTo: topContainerView.bottomAnchor, constant: 20).isActive = true
        middleContainerView.bottomAnchor.constraint(equalTo: bottomContainerView.topAnchor, constant: -20).isActive = true
    }
    
    func didTapViewByCountry() {
        let countryWiseVC = CountryWiseViewController()
        navigationController?.pushViewController(countryWiseVC, animated: true)
    }
}

