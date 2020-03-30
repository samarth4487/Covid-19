//
//  CountryData.swift
//  Covid-19
//
//  Created by Samarth Paboowal on 29/03/20.
//  Copyright © 2020 Samarth. All rights reserved.
//

import Foundation

struct CountriesData: Decodable {
    
    var data: [Country]?
    var dt: String?
    var ts: Int?
    
    private enum CodingKeys: String, CodingKey {
        case data
        case dt
        case ts
    }
}

struct Country: Decodable {
    
    var name: String?
    var confirmed: Int?
    var deaths: Int?
    var recovered: Int?
    
    private enum CodingKeys: String, CodingKey {
        case name = "location"
        case confirmed
        case deaths
        case recovered
    }
}
