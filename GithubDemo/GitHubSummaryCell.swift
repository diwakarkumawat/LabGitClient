//
//  GitHubSummaryCell.swift
//  
//
//  Created by Kumawat, Diwakar on 4/5/17.
//
//

import UIKit
import AFNetworking

class GitHubSummaryCell: UITableViewCell {
    
    @IBOutlet weak var repoImage: UIImageView!
    @IBOutlet weak var forkCount: UILabel!
    @IBOutlet weak var repoName: UILabel!
    @IBOutlet weak var starCount: UILabel!
    @IBOutlet weak var developerName: UILabel!
    @IBOutlet weak var repoDescription: UILabel!
    
    
    var gitrepo : GithubRepo! {
        didSet {
            repoName.text = gitrepo.name!
            repoImage.setImageWith(URL(string: gitrepo.ownerAvatarURL!)!)
            repoDescription.text = gitrepo.repoDescription!
            forkCount.text = "\(gitrepo.forks!)"
            starCount.text = "\(gitrepo.stars!)"
            developerName.text = gitrepo.ownerHandle!
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
