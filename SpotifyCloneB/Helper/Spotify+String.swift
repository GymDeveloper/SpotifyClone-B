//
//  Spotify+String.swift
//  SpotifyCloneB
//
//  Created by Linder Anderson Hassinger Solano    on 7/05/22.
//

import Foundation

class HelperString {
    
    static let imageProfileLink = "https://scontent-ort2-1.xx.fbcdn.net/v/t1.18169-1/19642274_1353158648054808_6515442544409910528_n.jpg?stp=dst-jpg_s320x320&_nc_cat=106&ccb=1-6&_nc_sid=0c64ff&_nc_ohc=YMQr_4HeHhoAX9FpvWK&_nc_ht=scontent-ort2-1.xx&edm=AP4hL3IEAAAA&oh=00_AT-nEqK7-QwNrMIkPLVUXPwnmRN285MR-4FfH4DVnMQFOg&oe=629AA242"
    
    static func getURLFromString(url: String) -> URL? {
        guard let url = URL(string: url) else { return nil }
        
        return url
    }
    
    static func setFormatNumber(number: Int) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        
        guard let formattedNumber = numberFormatter.string(from: NSNumber(value: number)) else { return "" }
        
        return formattedNumber
    }
    
}
