//
//  Request.swift
//  SpotifyCloneB
//
//  Created by Linder Anderson Hassinger Solano    on 7/05/22.
//

import Foundation

class Request {
    
    let token = "BQC5ELSdQ4kHBSb2vXybIEqzVBnp1MGReNfLgYcmk0T5O2iJJnfIqZyVn5UbR-MH9wiGb1i7walBgn1osbMdv_93SFpD1v77LS3MeF6GtQyISgtsE204CEI37lrhXIljd4pKg1rRm-K6tehhRVQhb-FeGGBkvAvMZmk"
    
    let BASE_URL = "https://api.spotify.com/v1/"
    
    func getDataFromAPI(url: String) async -> Data? {
        do {
            var request = URLRequest(url: HelperString.getURLFromString(url: "\(BASE_URL)\(url)")!)
            request.httpMethod = "GET"
            request.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
            
            let (data, _) = try await URLSession.shared.data(for: request)
            
            return data
        } catch {
            return nil
        }
    }
    
}
