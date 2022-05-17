//
//  RepositoryTableViewCell.swift
//  iOSEngineerCodeCheck
//
//  Created by 宮本大新 on 2022/05/18.
//  Copyright © 2022 YUMEMI Inc. All rights reserved.
//

import UIKit

class RepositoryTableViewCell: UITableViewCell {

    @IBOutlet var avatarImage: UIImageView!

    @IBOutlet var nameLabel: UILabel!

    @IBOutlet var loginLabel: UILabel!

    @IBOutlet var languageLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func setCell(avatarUrl: String, login: String, name: String, language: String) {

        avatarImage.af.setImage(
            withURL: URL(string: avatarUrl)!,
            placeholderImage: UIImage(named: "placeholder")!,
            imageTransition: .crossDissolve(0.5)
        )

        loginLabel.text = login

        nameLabel.text = name

        languageLabel.text = language
        languageLabel.backgroundColor = UIColor(language: language)
    }
}
