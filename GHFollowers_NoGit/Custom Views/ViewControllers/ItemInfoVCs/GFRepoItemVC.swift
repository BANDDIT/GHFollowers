//
//  GFRepoItemVC.swift
//  GHFollowers
//
//  Created by Arrick Russell Adinoto on 18/11/25.
//

import UIKit

class GFRepoItemVC: GFItemInfoVC {
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(backgroundColor: .systemPurple, title: "GitHub Profile")
    }
    
    override func actionButtonTapped() {
        //delegate.didTapGitHubProfile()
        delegate.didTapGitHubProfile(for: user)
    }
}

