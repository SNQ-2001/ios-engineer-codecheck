//
//  RepositoryTableViewCell.swift
//  iOSEngineerCodeCheck
//
//  Created by 宮本大新 on 2022/05/18.
//  Copyright © 2022 YUMEMI Inc. All rights reserved.
//

import UIKit
import AlamofireImage
import JXMarqueeView

class RepositoryTableViewCell: UITableViewCell {

    /// セルアイテム
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

        // アカウント画像用データのアンラップ
        guard let url = URL(string: avatarUrl) else { return }
        guard let image = UIImage(named: "placeholder") else { return }

        // アカウント画像
        self.avatarImage.af.setImage(
            withURL: url,
            placeholderImage: image,
            imageTransition: .crossDissolve(0.5)
        )

        // リポジトリ名
        self.nameLabel.text = name

        // アカウントID
        self.loginLabel.text = login

        // リポジトリ言語
        self.languageLabel.text = language

        // リポジトリ言語カラー
        self.languageView.backgroundColor = UIColor(language: language)
        
    }
}
