//
//  View+Extensions.swift
//  MoviesGraphQLApp
//
//  Created by Usha Sai Chintha on 13/06/23.
//

import Foundation
import SwiftUI

extension View {
    func embedInNavigationView() -> some View {
        NavigationView { self }
    }
}
