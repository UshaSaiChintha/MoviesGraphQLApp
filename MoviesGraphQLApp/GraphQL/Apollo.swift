//
//  Apollo.swift
//  MoviesGraphQLApp
//
//  Created by Usha Sai Chintha on 13/06/23.
//

import Foundation
import Apollo

class Network {
    
    static let shared: Network = Network()
    
    private init() { }
    
    lazy var apollo = ApolloClient(url: URL(string: "http://localhost:4000")!)
    
}
