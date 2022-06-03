//
//  SearchViewModel.swift
//  SpotifyCloneB
//
//  Created by Linder Anderson Hassinger Solano    on 3/06/22.
//

import Foundation

class SearchViewModel {
    
    let request: Request = Request()
    
    var searchResult: TracksSeacrh? = nil
    
    // -> Esta indicado que tipo de resupuesta retorna la funcion
    func getSearchMusic(name: String) async -> TracksSeacrh? {
        do {
            guard let data = await request.getDataFromAPI(url: "search?q=\(name)&type=track&limit=10") else { return nil }
            
            if let decoder = try? JSONDecoder().decode(SearchList.self, from: data) {
                DispatchQueue.main.async(execute: {
                    print(decoder.tracks.items)
                    self.searchResult = decoder.tracks
                })
            }
            
            return searchResult
        } catch let error {
            print(error.localizedDescription)
            return nil
        }
    }
}
