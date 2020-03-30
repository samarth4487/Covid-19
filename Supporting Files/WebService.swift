//
//  WebService.swift
//  Covid-19
//
//  Created by Samarth Paboowal on 29/03/20.
//  Copyright © 2020 Samarth. All rights reserved.
//

import Foundation

class WebService {
    
    static let shared = WebService()
    
    private init() {}
    
    struct APIEndpoint {
        static let home = "https://covid2019-api.herokuapp.com/v2/total"
        static let countryWise = "https://covid2019-api.herokuapp.com/v2/current"
    }
    
    func fetchHomeData(url: URL, completion: @escaping (Result<WorldWideData, APIError>) -> Void) {
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data, error == nil else {
                completion(.failure(.InvalidDataError))
                return
            }
            
            do {
                let homeData = try JSONDecoder().decode(HomeData.self, from: data)
                guard let worldWideData = homeData.data else {
                    completion(.failure(.InvalidDataError))
                    return
                }
                completion(.success(worldWideData))
            } catch {
                completion(.failure(.decodingError))
            }
        }.resume()
    }
    
    func fetchCountryWiseData(url: URL, completion: @escaping (Result<[Country], APIError>) -> Void) {
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data, error == nil else {
                completion(.failure(.InvalidDataError))
                return
            }
            
            do {
                let decodedData = try JSONDecoder().decode(CountriesData.self, from: data)
                guard let countryWiseData = decodedData.data else {
                    completion(.failure(.InvalidDataError))
                    return
                }
                completion(.success(countryWiseData))
            } catch {
                completion(.failure(.decodingError))
            }
        }.resume()
    }
}

enum APIError: Error {
    case decodingError
    case InvalidDataError
}

extension APIError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .decodingError:
            return NSLocalizedString("Error while decoding data!", comment: "")
        case .InvalidDataError:
           return NSLocalizedString("Invalid or nil data found!", comment: "")
        }
    }
}
