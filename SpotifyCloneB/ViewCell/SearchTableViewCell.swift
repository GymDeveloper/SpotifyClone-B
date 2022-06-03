//
//  SearchTableViewCell.swift
//  SpotifyCloneB
//
//  Created by Linder Anderson Hassinger Solano    on 3/06/22.
//

import UIKit

class SearchTableViewCell: UITableViewCell {

    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var converImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
