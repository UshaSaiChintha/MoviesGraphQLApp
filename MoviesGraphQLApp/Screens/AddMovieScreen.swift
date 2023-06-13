//
//  AddMovieScreen.swift
//  MoviesGraphQLApp
//
//  Created by Usha Sai Chintha on 13/06/23.
//

import SwiftUI

struct AddMovieScreen: View {
    
    @StateObject private var addMovieViewModel = AddMovieViewModel()
    @Environment(\.presentationMode) private var presentationMode
    
    var body: some View {
        Form {
            
            TextField("Name", text: $addMovieViewModel.name, onEditingChanged: { _ in }) {
                // perform a REST api request to get the posters
                addMovieViewModel.fetchPostersByMovieName(name: addMovieViewModel.name.encoded())
            }
            
            TextField("Year", text: $addMovieViewModel.year)
            
            GenreSelectionView(onSelected: { (viewModel) in
                addMovieViewModel.genre = viewModel.name
            }, ignoreGenres: ["All"])
            
            MoviePosterGridView(posters: addMovieViewModel.posters, selectedPoster: $addMovieViewModel.poster)
            
        }
        .navigationTitle("Add New Movie")
        .navigationBarItems(trailing: Button("Save") {
            addMovieViewModel.addMovie {
                presentationMode.wrappedValue.dismiss()
            }
        })
        .embedInNavigationView()
    }
}

struct AddMovieScreen_Previews: PreviewProvider {
    static var previews: some View {
        AddMovieScreen()
    }
}
