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
    
    var body: some View {
        VStack {
            
            Picker("Select", selection: .constant("Foo")) {
                Text("All")
                Text("Fiction")
                Text("Kids")
                Text("Horror")
            }.pickerStyle(SegmentedPickerStyle())
            
            Spacer()
            
            if !movieListViewModel.movies.isEmpty {
                MovieListView(movies: movieListViewModel.movies)
            } else {
                NoResultView(message: "No movies found")
            }
            
            Spacer()
            
        }
        .sheet(isPresented: $isPresented, onDismiss: {
            
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
