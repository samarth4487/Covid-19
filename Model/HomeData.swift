//
//  HomeData.swift
//  Covid-19
//
//  Created by Samarth Paboowal on 28/03/20.
//  Copyright © 2020 Samarth. All rights reserved.
//

import Foundation

struct HomeData: Decodable {
    
    var data: WorldWideData?
    var dt: String?
    var ts: Int?
    
    private enum CodingKeys: String, CodingKey {
        case data
        case dt
        case ts
    }
}

struct WorldWideData: Decodable {
    
    var confirmed: Int?
    var deaths: Int?
    var recovered: Int?
    
    var active: Int?
    var closed: Int?
    
    var recoveredPercentage: Int?
    var deathPercentage: Int?
    var activePercentage: Int?
    var closedPercentage: Int?
    
    private enum CodingKeys: String, CodingKey {
        case confirmed
        case deaths
        case recovered
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        confirmed = (try container.decodeIfPresent(Int.self, forKey: .confirmed)) ?? nil
        deaths = (try container.decodeIfPresent(Int.self, forKey: .deaths)) ?? nil
        recovered = (try container.decodeIfPresent(Int.self, forKey: .recovered)) ?? nil
        calculateRemaingValues()
    }
    
    fileprivate mutating func calculateRemaingValues() {
        
        guard let confirmed = confirmed, let deaths = deaths, let recovered = recovered else { return }
        
        closed = deaths + recovered
        active = confirmed - closed!
        
        activePercentage = Int((Double(active!)/Double(confirmed)) * 100)
        closedPercentage = 100 - activePercentage!
        
        recoveredPercentage = Int((Double(recovered)/Double(closed!)) * 100)
        deathPercentage = 100 - recoveredPercentage!
    }
}
