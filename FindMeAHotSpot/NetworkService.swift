//
//  NetworkService.swift
//  FindMeAHotSpot
//
//  Created by Mohammad Farzane on 2019-03-15.
//  Copyright © 2019 ShahinFarzane. All rights reserved.
//

import Foundation
import Moya


private let apiKey = "XEHPuHhXnDKZNhrCJtC5mamI2rV6ulDjJdooV3II94DBfZnp82y5fhHH5zukbVwayMWqLxrVCw05KWuoVLWFUT736h6nr5009hrniZtlUPMyeJ_mLDMTZ-Jx27mLXHYx"

enum YelpService {
    enum BusinessesProvider: TargetType {
        case search(lat: Double, long: Double)
        case details(id: String)
        
        var baseURL: URL {
            return URL(string: "https://api.yelp.com/v3/businesses")!
        }
        
        var path: String {
            switch self {
            case .search:
                return "/search"
            case let .details(id):
                return "/\(id)"
            }
        }
        
        var method: Moya.Method {
            return .get
        }
        
        var sampleData: Data {
            return Data()
        }
        
        var task: Task {
            switch self {
            case let .search(lat, long):
                return .requestParameters(
                    parameters: ["latitude": lat, "longitude": long, "limit": 10], encoding: URLEncoding.queryString)
            case .details:
                return .requestPlain
            }
            
        }
        
        var headers: [String : String]? {
            return ["Authorization": "Bearer \(apiKey)"]
        }
    }
}
