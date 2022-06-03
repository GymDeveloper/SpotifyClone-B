//
//  Request.swift
//  SpotifyCloneB
//
//  Created by Linder Anderson Hassinger Solano    on 7/05/22.
//

import Foundation

class Request {
    
    let token = "BQAz44N0O-2Iu7LrzZFx6D9IBWRTa-0qLqbZq4fUMqn8XQ8RUDcGnQsQfUEqUbzi_fcrhI34vmc7ui5LHY5jZrmkP-uKd9L3nZJLJjVMs64PsozrY_K_Ii1aZA5RqGnXlcMmTVwEHO6Y9c_9Lnd7mXyq7tDOBTkaYTQ"
    
    let BASE_URL = "https://api.spotify.com/v1/"
    
    func getDataFromAPI(url: String) async -> Data? {
        do {
            let urlParse = url.replacingOccurrences(of: " ", with: "%20")
            var request = URLRequest(url: HelperString.getURLFromString(url: "\(BASE_URL)\(urlParse)")!)
            request.httpMethod = "GET"
            request.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
            
            let (data, _) = try await URLSession.shared.data(for: request)
            
            return data
        } catch {
            return nil
        }
    }
    
}
