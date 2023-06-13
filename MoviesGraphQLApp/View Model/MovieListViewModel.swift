//
//  MovieListViewModel.swift
//  MoviesGraphQLApp
//
//  Created by Usha Sai Chintha on 13/06/23.
//

import Foundation
import Apollo

class MovieListViewModel: ObservableObject {
    
    @Published var movies: [MovieViewModel] = []
    
    func getAllMovies(genre: String? = nil) {
        
        Network.shared.apollo.fetch(query: GetAllMoviesQuery(genre: genre)) { [weak self] result in
            
            switch result {
                case .success(let graphQLResult):
                   
                    guard let data = graphQLResult.data,
                          let movies = data.movies
                          else {
                        return
                    }
                    
                    DispatchQueue.main.async {
                        self?.movies = movies.compactMap { $0 }.map(MovieViewModel.init)
                    }
                    
                case .failure(let error):
                    print(error)
            }
            
        }
        
    }
    
}

// MovieViewModel represents individual movie that we see on screen
struct MovieViewModel {
    
    let movie: GetAllMoviesQuery.Data.Movie
    
    var id: GraphQLID {
        movie.id
    }
    
    var title: String {
        movie.title
    }
    
    var year: String {
        movie.year
    }
    
    var genre: String {
        movie.genre
    }
    
    var poster: String {
        movie.poster
    }
    
}
