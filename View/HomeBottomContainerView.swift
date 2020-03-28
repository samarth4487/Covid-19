//
//  HomeBottomContainerView.swift
//  Covid-19
//
//  Created by Samarth Paboowal on 28/03/20.
//  Copyright © 2020 Samarth. All rights reserved.
//

import UIKit

class HomeBottomContainerView: UIView {

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
    
    init() {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        layer.masksToBounds = true
        layer.cornerRadius = 10
        backgroundColor = .systemGray6
        isUserInteractionEnabled = true
        
        layoutViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func layoutViews() {
        
        addSubview(viewByCountryLabel)
        viewByCountryLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        viewByCountryLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        viewByCountryLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60).isActive = true
        
        addSubview(viewByCountryImageView)
        viewByCountryImageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        viewByCountryImageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        viewByCountryImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        viewByCountryImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didTapViewByCountry))
        addGestureRecognizer(tapGesture)
    }
    
    @objc fileprivate func didTapViewByCountry() {
        
    }

}
