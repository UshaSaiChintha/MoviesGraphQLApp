//
//  GenreSelectionView.swift
//  MoviesGraphQLApp
//
//  Created by Usha Sai Chintha on 13/06/23.
//

import SwiftUI

struct GenreSelectionView: View {
    
    let onSelected: (GenreViewModel) -> Void
    
    @State private var selectedGenre: GenreViewModel = GenreViewModel.defaultGenre
    @StateObject private var genreListViewModel = GenreListViewModel()
    var ignoreGenres: [String]?
    
    func prepareGenres() -> [GenreViewModel] {
        
        guard let ignoreGenres = ignoreGenres else {
            return genreListViewModel.genres
        }
        
        return genreListViewModel.genres.filter { genre in
            return !ignoreGenres.contains(genre.name)
        }
        
    }

    var body: some View {
        Picker("Select", selection: $selectedGenre) {
            ForEach(prepareGenres(), id: \.id) { genre in
                Text(genre.name).tag(genre)
            }
        }.pickerStyle(SegmentedPickerStyle())
        .onAppear(perform: {
            genreListViewModel.getAllGenres()
        })
        .onChange(of: selectedGenre, perform: { value in
            onSelected(value)
        })
    }
}

struct GenreSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        GenreSelectionView(onSelected: { _ in })
    }
}
