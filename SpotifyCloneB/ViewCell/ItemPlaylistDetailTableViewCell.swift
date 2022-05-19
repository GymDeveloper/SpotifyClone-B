//
//  ItemPlaylistDetailTableViewCell.swift
//  SpotifyCloneB
//
//  Created by Linder Anderson Hassinger Solano    on 19/05/22.
//

import UIKit

class ItemPlaylistDetailTableViewCell: UITableViewCell {

    @IBOutlet weak var lblAuthor: UILabel!
    @IBOutlet weak var coverImage: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
