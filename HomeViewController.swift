//
//  HomeViewController.swift
//  Covid-19
//
//  Created by Samarth Paboowal on 26/03/20.
//  Copyright © 2020 Samarth. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    var topContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 10
        view.backgroundColor = .systemGray6
        return view
    }()
    
    let coronavirusLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Coronavirus Cases"
        label.textColor = .label
        label.font = .systemFont(ofSize: 24, weight: .semibold)
        label.adjustsFontSizeToFitWidth = true
        label.textAlignment = .center
        return label
    }()
    
    let topContainerHorizontalLine: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemGray
        return view
    }()
    
    let topContainerVerticalStackView: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .vertical
        view.distribution = .fillEqually
        view.spacing = 20
        view.alignment = .center
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

    let closedCasesLabel: UILabel = {
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
    
    var middleContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 10
        view.backgroundColor = .systemGray6
        return view
    }()
    
    let closedCasesHeadingLabel: UILabel = {
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
        view.isUserInteractionEnabled = true
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
        
        topContainerView.addSubview(coronavirusLabel)
        coronavirusLabel.leadingAnchor.constraint(equalTo: topContainerView.leadingAnchor, constant: 20).isActive = true
        coronavirusLabel.trailingAnchor.constraint(equalTo: topContainerView.trailingAnchor, constant: -20).isActive = true
        coronavirusLabel.topAnchor.constraint(equalTo: topContainerView.topAnchor, constant: 20).isActive = true
        
        topContainerView.addSubview(topContainerHorizontalLine)
        topContainerHorizontalLine.leadingAnchor.constraint(equalTo: topContainerView.leadingAnchor).isActive = true
        topContainerHorizontalLine.trailingAnchor.constraint(equalTo: topContainerView.trailingAnchor).isActive = true
        topContainerHorizontalLine.topAnchor.constraint(equalTo: coronavirusLabel.bottomAnchor, constant: 15).isActive = true
        topContainerHorizontalLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        topContainerView.addSubview(topContainerVerticalStackView)
        topContainerVerticalStackView.leadingAnchor.constraint(equalTo: topContainerView.leadingAnchor, constant: 20).isActive = true
        topContainerVerticalStackView.trailingAnchor.constraint(equalTo: topContainerView.trailingAnchor, constant: -20).isActive = true
        topContainerVerticalStackView.topAnchor.constraint(equalTo: topContainerHorizontalLine.bottomAnchor, constant: 20).isActive = true
        topContainerVerticalStackView.bottomAnchor.constraint(equalTo: topContainerView.bottomAnchor, constant: -20).isActive = true
        
        topContainerVerticalStackView.addArrangedSubview(totalCasesLabel)
        topContainerVerticalStackView.addArrangedSubview(closedCasesLabel)
        topContainerVerticalStackView.addArrangedSubview(activeCasesLabel)
        
        totalCasesLabel.attributedText = NSMutableAttributedString().custom("467594\n", font: .systemFont(ofSize: 32, weight: .semibold), color: .systemRed).custom("Total Cases", font: .systemFont(ofSize: 20), color: .label)
        
        closedCasesLabel.attributedText = NSMutableAttributedString().custom("21181", font: .systemFont(ofSize: 32, weight: .semibold), color: .systemBlue).custom(" (30%)\n", font: .systemFont(ofSize: 20, weight: .medium), color: .label).custom("Closed Cases", font: .systemFont(ofSize: 20), color: .label)
        
        activeCasesLabel.attributedText = NSMutableAttributedString().custom("113770", font: .systemFont(ofSize: 32, weight: .semibold), color: .systemOrange).custom(" (70%)\n", font: .systemFont(ofSize: 20, weight: .medium), color: .label).custom("Active Cases", font: .systemFont(ofSize: 20), color: .label)
    }
    
    fileprivate func layoutMiddleContainer() {
        
        middleContainerView.addSubview(closedCasesHeadingLabel)
        closedCasesHeadingLabel.leadingAnchor.constraint(equalTo: middleContainerView.leadingAnchor, constant: 20).isActive = true
        closedCasesHeadingLabel.trailingAnchor.constraint(equalTo: middleContainerView.trailingAnchor, constant: -20).isActive = true
        closedCasesHeadingLabel.topAnchor.constraint(equalTo: middleContainerView.topAnchor, constant: 20).isActive = true
        
        middleContainerView.addSubview(horizontalLine)
        horizontalLine.leadingAnchor.constraint(equalTo: middleContainerView.leadingAnchor).isActive = true
        horizontalLine.trailingAnchor.constraint(equalTo: middleContainerView.trailingAnchor).isActive = true
        horizontalLine.topAnchor.constraint(equalTo: closedCasesHeadingLabel.bottomAnchor, constant: 15).isActive = true
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
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didTapViewByCountry))
        bottomContainerView.addGestureRecognizer(tapGesture)
    }
    
    @objc fileprivate func didTapViewByCountry() {
        
        let countryWiseVC = CountryWiseViewController()
        navigationController?.pushViewController(countryWiseVC, animated: true)
    }

}

