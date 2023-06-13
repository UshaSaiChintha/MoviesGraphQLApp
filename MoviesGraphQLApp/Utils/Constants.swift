//
//  Constants.swift
//  MoviesGraphQLApp
//
//  Created by Usha Sai Chintha on 13/06/23.
//

import Foundation

struct Constants {
    
    struct Keys {
        static let apiKey = "564727fa"
    }
    
    struct Urls {
        
        static func urlByMovieName(name: String) -> URL? {
            return URL(string: "http://www.omdbapi.com/?s=\(name)&page=2&apikey=\(Keys.apiKey)")
        }
    }
}
