//
//  Constants.swift
//  Covid-19
//
//  Created by Samarth Paboowal on 28/03/20.
//  Copyright © 2020 Samarth. All rights reserved.
//

import Foundation

enum APIError: Error {
    case domainError
    case decodingError
    case InvalidDataError
}

struct Constants {
    
    struct URL {
        static let home = "https://covid2019-api.herokuapp.com/v2/total"
        static let countryWise = "https://covid2019-api.herokuapp.com/v2/current"
    }
}
