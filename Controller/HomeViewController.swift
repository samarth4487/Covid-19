//
//  HomeViewController.swift
//  Covid-19
//
//  Created by Samarth Paboowal on 26/03/20.
//  Copyright © 2020 Samarth. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    let topContainerView = HomeTopContainerView()
    let middleContainerView = HomeMiddleContainerView()
    let bottomContainerView = HomeBottomContainerView()

    var homeData: HomeData!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationItem.title = "Covid 19"
        edgesForExtendedLayout = []
        layoutViews()
    }
    
    fileprivate func layoutViews() {
        
        view.addSubview(topContainerView)
        topContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        topContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        topContainerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        topContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.45).isActive = true
        
        view.addSubview(bottomContainerView)
        bottomContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        bottomContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        bottomContainerView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        bottomContainerView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
        
        view.addSubview(middleContainerView)
        middleContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        middleContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        middleContainerView.topAnchor.constraint(equalTo: topContainerView.bottomAnchor, constant: 20).isActive = true
        middleContainerView.bottomAnchor.constraint(equalTo: bottomContainerView.topAnchor, constant: -20).isActive = true
    }
}

