//
//  HomeMiddleContainerView.swift
//  Covid-19
//
//  Created by Samarth Paboowal on 28/03/20.
//  Copyright © 2020 Samarth. All rights reserved.
//

import UIKit

class HomeMiddleContainerView: UIView {

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
    
    let verticalStackView: UIStackView = {
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
    
    let horizontalStackView: UIStackView = {
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
    
    init() {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        layer.masksToBounds = true
        layer.cornerRadius = 10
        backgroundColor = .systemGray6
        
        layoutViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func layoutViews() {
        
        addSubview(closedCasesLabel)
        closedCasesLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        closedCasesLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        closedCasesLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20).isActive = true
        closedCasesLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        addSubview(horizontalLine)
        horizontalLine.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        horizontalLine.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        horizontalLine.topAnchor.constraint(equalTo: closedCasesLabel.bottomAnchor, constant: 15).isActive = true
        horizontalLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        addSubview(verticalStackView)
        verticalStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        verticalStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        verticalStackView.topAnchor.constraint(equalTo: horizontalLine.bottomAnchor, constant: 20).isActive = true
        verticalStackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20).isActive = true
        
        verticalStackView.addArrangedSubview(closedCasesInfoLabel)
        verticalStackView.addArrangedSubview(horizontalStackView)
        
        horizontalStackView.widthAnchor.constraint(equalTo: verticalStackView.widthAnchor).isActive = true

        horizontalStackView.addArrangedSubview(recoveredCasesInfoLabel)
        horizontalStackView.addArrangedSubview(deathCasesInfoLabel)
        
        closedCasesInfoLabel.attributedText = NSMutableAttributedString().custom("158113\n", font: .systemFont(ofSize: 24, weight: .bold), color: .systemBlue).custom("Cases which had an outcome", font: .systemFont(ofSize: 16), color: .label)
        
        recoveredCasesInfoLabel.attributedText = NSMutableAttributedString().custom("130915", font: .systemFont(ofSize: 24, weight: .bold), color: .systemGreen).custom(" (83%)\n", font: .systemFont(ofSize: 16, weight: .medium), color: .label).custom("Recovered", font: .systemFont(ofSize: 16), color: .label)
        
        deathCasesInfoLabel.attributedText = NSMutableAttributedString().custom("27198", font: .systemFont(ofSize: 24, weight: .bold), color: .systemRed).custom(" (17%)\n", font: .systemFont(ofSize: 16, weight: .medium), color: .label).custom("Deaths", font: .systemFont(ofSize: 16), color: .label)
    }

}
