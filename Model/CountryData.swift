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
    var active: Int?
    
    private enum CodingKeys: String, CodingKey {
        case name = "location"
        case confirmed
        case deaths
        case recovered
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        name = (try container.decodeIfPresent(String.self, forKey: .name)) ?? nil
        confirmed = (try container.decodeIfPresent(Int.self, forKey: .confirmed)) ?? nil
        recovered = (try container.decodeIfPresent(Int.self, forKey: .recovered)) ?? nil
        deaths = (try container.decodeIfPresent(Int.self, forKey: .deaths)) ?? nil
        calculateRemainingValue()
    }
    
    fileprivate mutating func calculateRemainingValue() {
        
        guard let deaths = deaths, let recovered = recovered, let confirmed = confirmed else { return }
        
        let closed = deaths + recovered
        active = confirmed - closed
    }
}
