//
//  CountryCell.swift
//  Covid-19
//
//  Created by Samarth Paboowal on 30/03/20.
//  Copyright © 2020 Samarth. All rights reserved.
//

import UIKit

class CountryCell: UITableViewCell {
    
    let countryLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .label
        label.font = .systemFont(ofSize: 20, weight: .semibold)
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
    
    let confirmedLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 15
        label.layer.borderWidth = 2
        label.layer.borderColor = UIColor.systemBlue.cgColor
        label.textAlignment = .center
        label.adjustsFontSizeToFitWidth = true
        label.font = .systemFont(ofSize: 14, weight: .medium)
        label.backgroundColor = .label
        label.textColor = .systemBlue
        return label
    }()
    
    let deathsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 15
        label.layer.borderWidth = 2
        label.layer.borderColor = UIColor.systemRed.cgColor
        label.textAlignment = .center
        label.adjustsFontSizeToFitWidth = true
        label.font = .systemFont(ofSize: 14, weight: .medium)
        label.backgroundColor = .label
        label.textColor = .systemRed
        return label
    }()
    
    let recoveredLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 15
        label.layer.borderWidth = 2
        label.layer.borderColor = UIColor.systemGreen.cgColor
        label.textAlignment = .center
        label.adjustsFontSizeToFitWidth = true
        label.font = .systemFont(ofSize: 14, weight: .medium)
        label.backgroundColor = .label
        label.textColor = .systemGreen
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureCell(_ country: Country) {
        
        contentView.addSubview(countryLabel)
        countryLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20).isActive = true
        countryLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20).isActive = true
        countryLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        countryLabel.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
        contentView.addSubview(horizontalStackView)
        horizontalStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20).isActive = true
        horizontalStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20).isActive = true
        horizontalStackView.topAnchor.constraint(equalTo: countryLabel.bottomAnchor, constant: 10).isActive = true
        horizontalStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10).isActive = true
        
        horizontalStackView.addArrangedSubview(confirmedLabel)
        horizontalStackView.addArrangedSubview(deathsLabel)
        horizontalStackView.addArrangedSubview(recoveredLabel)
        
        confirmedLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        deathsLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        recoveredLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        countryLabel.text = country.name ?? ""
        confirmedLabel.text = "\(country.confirmed ?? -1)"
        deathsLabel.text = "\(country.deaths ?? -1)"
        recoveredLabel.text = "\(country.recovered ?? -1)"
    }

}
