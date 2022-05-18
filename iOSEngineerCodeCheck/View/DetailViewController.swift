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

    @IBOutlet weak var imageView: UIImageView!

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var languageLabel: UILabel!
    @IBOutlet weak var starLabel: UILabel!
    @IBOutlet weak var wathcersLabel: UILabel!
    @IBOutlet weak var forkLabel: UILabel!
    @IBOutlet weak var issueLabel: UILabel!
    
    var viewController: ViewController!

    override func viewDidLoad() {
        super.viewDidLoad()

        let repo = viewController.viewModel.repo.items[viewController.viewModel.cellIndex]
        
        createGradient(repo: repo)
        
        languageLabel.text = repo.language ?? "No Language"
        starLabel.text = "\(repo.stargazers_count) stars"
        wathcersLabel.text = "\(repo.watchers_count) watchers"
        forkLabel.text = "\(repo.forks_count) forks"
        issueLabel.text = "\(repo.open_issues_count) open issues"

        getImage()
        
    }

    func createGradient(repo: Item) {
        let topColor = UIColor(language: repo.language ?? "No Language")
        let bottomColor = UIColor(language: repo.language ?? "No Language").gradient
        let gradientColors: [CGColor] = [topColor.cgColor, bottomColor.cgColor]
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColors
        gradientLayer.frame = self.view.bounds
        self.view.layer.insertSublayer(gradientLayer, at: 0)
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
