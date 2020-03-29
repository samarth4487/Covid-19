//
//  HomeTopContainerView.swift
//  Covid-19
//
//  Created by Samarth Paboowal on 28/03/20.
//  Copyright © 2020 Samarth. All rights reserved.
//

import UIKit

class HomeTopContainerView: UIView {
    
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
    
    var totalCases: Int!
    var closedCases: Int!
    var activeCases: Int!
    var closedCasesPercentage: Int!
    var activeCasesPercentage: Int!

    init(totalCases: Int, closedCases: Int, activeCases: Int, closedCasesPercentage: Int, activeCasesPercentage: Int) {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        layer.masksToBounds = true
        layer.cornerRadius = 10
        backgroundColor = .systemGray6
        
        self.totalCases = totalCases
        self.closedCases = closedCases
        self.activeCases = activeCases
        self.closedCasesPercentage = closedCasesPercentage
        self.activeCasesPercentage = activeCasesPercentage
        
        configureView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func configureView() {
        
        addSubview(coronavirusLabel)
        coronavirusLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        coronavirusLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        coronavirusLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20).isActive = true
        coronavirusLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        addSubview(horizontalLine)
        horizontalLine.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        horizontalLine.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        horizontalLine.topAnchor.constraint(equalTo: coronavirusLabel.bottomAnchor, constant: 15).isActive = true
        horizontalLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        addSubview(verticalStackView)
        verticalStackView.backgroundColor = .red
        verticalStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        verticalStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        verticalStackView.topAnchor.constraint(equalTo: horizontalLine.bottomAnchor, constant: 20).isActive = true
        verticalStackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20).isActive = true

        verticalStackView.addArrangedSubview(totalCasesLabel)
        verticalStackView.addArrangedSubview(closedCasesLabel)
        verticalStackView.addArrangedSubview(activeCasesLabel)

        totalCasesLabel.attributedText = NSMutableAttributedString().custom("\(totalCases!)\n", font: .systemFont(ofSize: 32, weight: .semibold), color: .systemRed).custom("Total Cases", font: .systemFont(ofSize: 20), color: .label)

        closedCasesLabel.attributedText = NSMutableAttributedString().custom("\(closedCases!)", font: .systemFont(ofSize: 32, weight: .semibold), color: .systemBlue).custom(" (\(closedCasesPercentage!)%)\n", font: .systemFont(ofSize: 20, weight: .medium), color: .label).custom("Closed Cases", font: .systemFont(ofSize: 20), color: .label)

        activeCasesLabel.attributedText = NSMutableAttributedString().custom("\(activeCases!)", font: .systemFont(ofSize: 32, weight: .semibold), color: .systemOrange).custom(" (\(activeCasesPercentage!)%)\n", font: .systemFont(ofSize: 20, weight: .medium), color: .label).custom("Active Cases", font: .systemFont(ofSize: 20), color: .label)
    }
    
}
