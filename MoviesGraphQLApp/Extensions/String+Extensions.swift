//
//  String+Extensions.swift
//  MoviesGraphQLApp
//
//  Created by Usha Sai Chintha on 13/06/23.
//

import Foundation

extension String {
    
    func encoded() -> String {
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
    
}
