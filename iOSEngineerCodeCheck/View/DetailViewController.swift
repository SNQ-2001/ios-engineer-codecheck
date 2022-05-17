//
//  ViewController2.swift
//  iOSEngineerCodeCheck
//
//  Created by 史 翔新 on 2020/04/21.
//  Copyright © 2020 YUMEMI Inc. All rights reserved.
//

import UIKit
import AlamofireImage

class DetailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var languageLabel: UILabel!
    @IBOutlet var starLabel: UILabel!
    @IBOutlet var wathcersLabel: UILabel!
    @IBOutlet var forkLabel: UILabel!
    @IBOutlet var issueLabel: UILabel!
    
    var viewController: ViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let repo = viewController.viewModel.repo.items[viewController.viewModel.cellIndex]
        
        languageLabel.text = repo.language ?? "No Language"
        starLabel.text = "\(repo.stargazers_count) stars"
        wathcersLabel.text = "\(repo.watchers_count) watchers"
        forkLabel.text = "\(repo.forks_count) forks"
        issueLabel.text = "\(repo.open_issues_count) open issues"

        getImage()
        
    }
    
    func getImage() {
        
        let repo = viewController.viewModel.repo.items[viewController.viewModel.cellIndex]
        
        titleLabel.text = repo.full_name

        // MARK: AlamofireImageに変更
        /// プレイスホルダー画像の設定
        /// 表示アニメーションの設定
        self.imageView.af.setImage(
            withURL: URL(string: repo.owner.avatar_url)!,
            placeholderImage: UIImage(named: "placeholder")!,
            imageTransition: .crossDissolve(0.5)
        )
    }
    
}
