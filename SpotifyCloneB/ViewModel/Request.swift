//
//  Request.swift
//  SpotifyCloneB
//
//  Created by Linder Anderson Hassinger Solano    on 7/05/22.
//

import Foundation

class Request {
    
    let token  = "BQCPGkECvdKAwsaekhm2ljEmzxl5pyAHpwPm2hxjVRwLJn1t2YaNA_NaLntnX22SK1ugt_QAW9_xi84oVaWYa_fAgy6P432rCY4M4CXUAuHtL6591WimJF2-RCrmOQWcfQbZVvc9fG0Gi3BD1L4Qt2f90Y35L-OLUzU"
    
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
