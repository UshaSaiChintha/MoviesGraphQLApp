//
//  Movie.swift
//  MoviesGraphQLApp
//
//  Created by Usha Sai Chintha on 14/06/23.
//

import Foundation

struct MovieResponse: Decodable {
    
    let movies: [Movie]
    
    private enum CodingKeys: String, CodingKey {
        case movies = "Search"
    }
}

struct Movie: Decodable {
    
    let title: String
    let year: String
    let poster: String
    let imdbId: String
    
    private enum CodingKeys: String, CodingKey {
        case title = "Title"
        case year = "Year"
        case poster = "Poster"
        case imdbId = "imdbID"
    }
}
