//
//  ViewController.swift
//  Covid-19
//
//  Created by Samarth Paboowal on 26/03/20.
//  Copyright © 2020 Samarth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var topContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 10
        view.backgroundColor = .systemGray6
        return view
    }()
    
    var middleContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 10
        view.backgroundColor = .systemGray6
        return view
    }()
    
    var bottomContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 10
        view.backgroundColor = .systemGray6
        return view
    }()
    
    let totalCasesLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.numberOfLines = 2
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    let deathsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.numberOfLines = 2
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    let recoveredLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.numberOfLines = 2
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    let activeCasesLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.numberOfLines = 2
        label.adjustsFontSizeToFitWidth = true
        return label
    }()

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
        topContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        
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
        
        topContainerView.addSubview(totalCasesLabel)
        totalCasesLabel.topAnchor.constraint(equalTo: topContainerView.topAnchor).isActive = true
        totalCasesLabel.leadingAnchor.constraint(equalTo: topContainerView.leadingAnchor, constant: 20).isActive = true
        totalCasesLabel.trailingAnchor.constraint(equalTo: topContainerView.trailingAnchor, constant: -20).isActive = true
        totalCasesLabel.heightAnchor.constraint(equalTo: topContainerView.heightAnchor, multiplier: 0.33).isActive = true
        
        topContainerView.addSubview(recoveredLabel)
        recoveredLabel.bottomAnchor.constraint(equalTo: topContainerView.bottomAnchor).isActive = true
        recoveredLabel.leadingAnchor.constraint(equalTo: topContainerView.leadingAnchor, constant: 20).isActive = true
        recoveredLabel.trailingAnchor.constraint(equalTo: topContainerView.trailingAnchor, constant: -20).isActive = true
        recoveredLabel.heightAnchor.constraint(equalTo: topContainerView.heightAnchor, multiplier: 0.33).isActive = true
        
        topContainerView.addSubview(deathsLabel)
        deathsLabel.topAnchor.constraint(equalTo: totalCasesLabel.bottomAnchor).isActive = true
        deathsLabel.leadingAnchor.constraint(equalTo: topContainerView.leadingAnchor, constant: 20).isActive = true
        deathsLabel.trailingAnchor.constraint(equalTo: topContainerView.trailingAnchor, constant: -20).isActive = true
        deathsLabel.bottomAnchor.constraint(equalTo: recoveredLabel.topAnchor).isActive = true
        
        totalCasesLabel.attributedText = NSMutableAttributedString().custom("Total Cases:\n", font: .systemFont(ofSize: 24), color: .label).custom("467594", font: .systemFont(ofSize: 36, weight: .semibold), color: .label)
        
        deathsLabel.attributedText = NSMutableAttributedString().custom("Deaths:\n", font: .systemFont(ofSize: 24), color: .label).custom("21181", font: .systemFont(ofSize: 36, weight: .semibold), color: .systemRed)
        
        recoveredLabel.attributedText = NSMutableAttributedString().custom("Recovered:\n", font: .systemFont(ofSize: 24), color: .label).custom("113770", font: .systemFont(ofSize: 36, weight: .semibold), color: .systemGreen)
    }

}

