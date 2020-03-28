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
    
    var middleContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 10
        view.backgroundColor = .systemGray6
        return view
    }()
    
    let closedCasesLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Closed Cases"
        label.textColor = .label
        label.font = .systemFont(ofSize: 24, weight: .semibold)
        label.adjustsFontSizeToFitWidth = true
        label.textAlignment = .center
        return label
    }()
    
    let horizontalLine: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemGray
        return view
    }()
    
    let middleContainerVerticalStackView: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .vertical
        view.distribution = .fillEqually
        view.spacing = 20
        view.alignment = .center
        return view
    }()
    
    let closedCasesInfoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 2
        label.adjustsFontSizeToFitWidth = true
        label.textAlignment = .center
        return label
    }()
    
    let middleContainerHorizontalStackView: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .horizontal
        view.distribution = .fillEqually
        view.spacing = 20
        view.alignment = .center
        return view
    }()
    
    let recoveredCasesInfoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 2
        label.adjustsFontSizeToFitWidth = true
        label.textAlignment = .center
        return label
    }()
    
    let deathCasesInfoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 2
        label.adjustsFontSizeToFitWidth = true
        label.textAlignment = .center
        return label
    }()
    
    var bottomContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 10
        view.backgroundColor = .systemGray6
        return view
    }()
    
    let viewByCountryLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "View by Country"
        label.textColor = .label
        return label
    }()
    
    let viewByCountryImageView: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = UIImage(systemName: "arrow.right.circle.fill")
        return view
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
        
        layoutTopContainer()
        layoutMiddleContainer()
        layoutBottomContainer()
    }
    
    fileprivate func layoutTopContainer() {
        
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
    
    fileprivate func layoutMiddleContainer() {
        
        middleContainerView.addSubview(closedCasesLabel)
        closedCasesLabel.leadingAnchor.constraint(equalTo: middleContainerView.leadingAnchor, constant: 20).isActive = true
        closedCasesLabel.trailingAnchor.constraint(equalTo: middleContainerView.trailingAnchor, constant: -20).isActive = true
        closedCasesLabel.topAnchor.constraint(equalTo: middleContainerView.topAnchor, constant: 20).isActive = true
        
        middleContainerView.addSubview(horizontalLine)
        horizontalLine.leadingAnchor.constraint(equalTo: middleContainerView.leadingAnchor).isActive = true
        horizontalLine.trailingAnchor.constraint(equalTo: middleContainerView.trailingAnchor).isActive = true
        horizontalLine.topAnchor.constraint(equalTo: closedCasesLabel.bottomAnchor, constant: 15).isActive = true
        horizontalLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        middleContainerView.addSubview(middleContainerVerticalStackView)
        middleContainerVerticalStackView.leadingAnchor.constraint(equalTo: middleContainerView.leadingAnchor, constant: 20).isActive = true
        middleContainerVerticalStackView.trailingAnchor.constraint(equalTo: middleContainerView.trailingAnchor, constant: -20).isActive = true
        middleContainerVerticalStackView.topAnchor.constraint(equalTo: horizontalLine.bottomAnchor, constant: 20).isActive = true
        middleContainerVerticalStackView.bottomAnchor.constraint(equalTo: middleContainerView.bottomAnchor, constant: -20).isActive = true
        
        middleContainerVerticalStackView.addArrangedSubview(closedCasesInfoLabel)
        middleContainerVerticalStackView.addArrangedSubview(middleContainerHorizontalStackView)
        
        middleContainerHorizontalStackView.widthAnchor.constraint(equalTo: middleContainerVerticalStackView.widthAnchor).isActive = true

        middleContainerHorizontalStackView.addArrangedSubview(recoveredCasesInfoLabel)
        middleContainerHorizontalStackView.addArrangedSubview(deathCasesInfoLabel)
        
        closedCasesInfoLabel.attributedText = NSMutableAttributedString().custom("158113\n", font: .systemFont(ofSize: 24, weight: .bold), color: .systemBlue).custom("Cases which had an outcome", font: .systemFont(ofSize: 16), color: .label)
        
        recoveredCasesInfoLabel.attributedText = NSMutableAttributedString().custom("130915", font: .systemFont(ofSize: 24, weight: .bold), color: .systemGreen).custom(" (83%)\n", font: .systemFont(ofSize: 16, weight: .medium), color: .label).custom("Recovered", font: .systemFont(ofSize: 16), color: .label)
        
        deathCasesInfoLabel.attributedText = NSMutableAttributedString().custom("27198", font: .systemFont(ofSize: 24, weight: .bold), color: .systemRed).custom(" (17%)\n", font: .systemFont(ofSize: 16, weight: .medium), color: .label).custom("Deaths", font: .systemFont(ofSize: 16), color: .label)
    }
    
    fileprivate func layoutBottomContainer() {
        
        bottomContainerView.addSubview(viewByCountryLabel)
        viewByCountryLabel.leadingAnchor.constraint(equalTo: bottomContainerView.leadingAnchor, constant: 20).isActive = true
        viewByCountryLabel.centerYAnchor.constraint(equalTo: bottomContainerView.centerYAnchor).isActive = true
        viewByCountryLabel.trailingAnchor.constraint(equalTo: bottomContainerView.trailingAnchor, constant: -60).isActive = true
        
        bottomContainerView.addSubview(viewByCountryImageView)
        viewByCountryImageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        viewByCountryImageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        viewByCountryImageView.trailingAnchor.constraint(equalTo: bottomContainerView.trailingAnchor, constant: -20).isActive = true
        viewByCountryImageView.centerYAnchor.constraint(equalTo: bottomContainerView.centerYAnchor).isActive = true
    }

}

