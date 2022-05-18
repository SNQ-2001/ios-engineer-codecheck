//
//  ViewController2.swift
//  iOSEngineerCodeCheck
//
//  Created by 史 翔新 on 2020/04/21.
//  Copyright © 2020 YUMEMI Inc. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage
import SafariServices

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!

    @IBOutlet var nameLabel: UILabel!

    @IBOutlet var loginLabel: UILabel!

    @IBOutlet var bioLable: UILabel!

    @IBOutlet var showProfileButton: UIButton!

    @IBOutlet var repositoryNameLabel: UILabel!
    @IBOutlet var repositoryDescriptionLabel: UILabel!

    @IBOutlet weak var starLabel: UILabel!
    @IBOutlet weak var forkLabel: UILabel!
    @IBOutlet weak var issueLabel: UILabel!
    
    var viewController: ViewController!

    override func viewDidLoad() {
        super.viewDidLoad()

        let repo = viewController.viewModel.repo.items[viewController.viewModel.cellIndex]
        
        createGradient(repo: repo)

        showProfileButton.backgroundColor = UIColor(language: repo.language ?? "Nothing")

        repositoryNameLabel.text = repo.name
        repositoryDescriptionLabel.text = repo.description

        issueLabel.text = "\(repo.open_issues_count) issues"
        starLabel.text = "\(repo.stargazers_count) stars"
        forkLabel.text = "\(repo.forks_count) forks"

        getImage()

        getAcountInfo()
        
    }


    @IBAction func showProfile(_ sender: Any) {
        let safariViewController = SFSafariViewController(url: NSURL(string: viewController.viewModel.repo.items[viewController.viewModel.cellIndex].owner.html_url)! as URL)
        safariViewController.modalPresentationStyle = .overFullScreen
        present(safariViewController, animated: true, completion: nil)
    }

    func createGradient(repo: Item) {
        let topTrailingColor = UIColor(language: repo.language ?? "No Language")
        let bottomLeadingColor = UIColor(language: repo.language ?? "No Language").gradient
        let gradientColors: [CGColor] = [topTrailingColor.cgColor, bottomLeadingColor.cgColor]

        let gradientLayer: CAGradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColors
        gradientLayer.startPoint = CGPoint.init(x: 1, y: 0)
        gradientLayer.endPoint = CGPoint.init(x: 0, y:1)
        gradientLayer.frame = self.view.bounds
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    func getImage() {

        let repo = viewController.viewModel.repo.items[viewController.viewModel.cellIndex]

        // MARK: AlamofireImageに変更
        /// プレイスホルダー画像の設定
        /// 表示アニメーションの設定
        self.imageView.af.setImage(
            withURL: URL(string: repo.owner.avatar_url)!,
            placeholderImage: UIImage(named: "placeholder")!,
            imageTransition: .crossDissolve(0.5)
        )
    }

    func getAcountInfo() {
        AF.request(viewController.viewModel.repo.items[viewController.viewModel.cellIndex].owner.url, method: .get).responseData { response in
            do {
                guard let data = response.data else { return }
                let accountInfo = try JSONDecoder().decode(AccountInfo.self, from: data)
                self.nameLabel.textTransition(0.4)
                self.loginLabel.textTransition(0.6)
                self.bioLable.textTransition(0.8)
                self.nameLabel.text = accountInfo.name
                self.loginLabel.text = accountInfo.login
                self.bioLable.text = accountInfo.bio ?? ""
            } catch {
                print("エラー")
            }
        }
    }
}
