//
//  RepositoryTableViewCell.swift
//  iOSEngineerCodeCheck
//
//  Created by 宮本大新 on 2022/05/18.
//  Copyright © 2022 YUMEMI Inc. All rights reserved.
//

import UIKit
import AlamofireImage

class RepositoryTableViewCell: UITableViewCell {

    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var languageLabel: UILabel!
    @IBOutlet weak var languageView: UIView!

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: "Repository")
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    /// カスタムセルをセット
    public func setCell(avatarUrl: String, login: String, name: String, language: String) {

        self.avatarImage.af.setImage(
            withURL: URL(string: avatarUrl)!,
            placeholderImage: UIImage(named: "placeholder")!,
            imageTransition: .crossDissolve(0.5)
        )
        self.loginLabel.text = login
        self.nameLabel.text = name
        self.languageLabel.text = language
        self.languageView.backgroundColor = UIColor(language: language)
        
    }
}
