//
//  NoResultView.swift
//  MoviesGraphQLApp
//
//  Created by Usha Sai Chintha on 13/06/23.
//

import SwiftUI

struct NoResultView: View {
    
    let message: String
    
    var body: some View {
        HStack {
            Image(systemName: "exclamationmark.circle")
                .foregroundColor(.yellow)
            Text(message)
        }
        .padding()
        
    }
}

struct NoResultView_Previews: PreviewProvider {
    static var previews: some View {
        NoResultView(message: "No movies found")
    }
}
