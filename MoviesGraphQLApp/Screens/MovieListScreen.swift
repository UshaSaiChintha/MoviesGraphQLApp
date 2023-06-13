//
//  MovieListScreen.swift
//  MoviesGraphQLApp
//
//  Created by Usha Sai Chintha on 13/06/23.
//

import SwiftUI
import Combine

struct MovieListScreen: View {
    
    @StateObject private var movieListViewModel = MovieListViewModel()
    @State private var isPresented: Bool = false
    
    private func genreSelected(genreViewModel: GenreViewModel) {
        switch genreViewModel.name {
            case "All":
            movieListViewModel.getAllMovies()
            default:
            movieListViewModel.getAllMovies(genre: genreViewModel.name)
        }
    }
    
    var body: some View {
        VStack {
            
            GenreSelectionView(onSelected: genreSelected)
            
            Spacer()
            
            if !movieListViewModel.movies.isEmpty {
                MovieListView(movies: movieListViewModel.movies) { movieId in
                    movieListViewModel.deleteMovie(movieId: movieId)
                }
            } else {
                NoResultView(message: "No movies found")
            }
            Spacer()
            
        }
        .sheet(isPresented: $isPresented, onDismiss: {
            movieListViewModel.getAllMovies()
        }, content: {
            AddMovieScreen()
        })
        .onAppear(perform: {
            movieListViewModel.getAllMovies()
        })
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
        .navigationBarItems(trailing: Button(action: {
            isPresented = true
        }, label: {
            Image(systemName: "plus")
        }))
        .navigationTitle("Movies")
        .embedInNavigationView()
    }
}

struct MovieListScreen_Previews: PreviewProvider {
    static var previews: some View {
        MovieListScreen()
    }
}
