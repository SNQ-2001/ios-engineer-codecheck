//
//  ViewController.swift
//  iOSEngineerCodeCheck
//
//  Created by 史 翔新 on 2020/04/20.
//  Copyright © 2020 YUMEMI Inc. All rights reserved.
//

import UIKit
import PKHUD
import Lottie
import Alamofire
import AlamofireImage

class ViewController: UITableViewController {

    @IBOutlet weak var uiSearchBar: UISearchBar!

    let icon: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        let image = UIImage(named: "GitHubMark")
        imageView.image = image
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.widthAnchor.constraint(equalToConstant: 30.0).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 30.0).isActive = true

        return imageView
    }()

    let animationView: AnimationView = {
        var lottie = AnimationView()
        lottie.animation = Animation.named("empty-box")
        // 比率
        lottie.contentMode = .scaleAspectFit
        // ループモード
        lottie.loopMode = .loop
        lottie.play()

        return lottie
    }()

    let viewModel = ViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()

        /// リロードハンドラー
        self.initViewModel()

        /// ネットワーク監視
        self.viewModel.networkMonitoring()

        /// サーチバーの設定
        self.uiSearchBar.delegate = self

        /// ナビゲーションビューにアイコンの設定
        self.navigationItem.titleView = icon

        /// ローディングビューの設定
        PKHUD.sharedHUD.contentView = PKHUDProgressView()

        /// アニメーションの設定
        setLottieView()

    }
    
    private func initViewModel() {
        self.viewModel.reloadHandler = { [weak self] in
            DispatchQueue.main.async {
                // リポジトリ情報格納庫が空になったらアニメーションを表示
                if self?.viewModel.repo.items.count == 0 {
                    self?.animationView.play()
                    self?.animationView.isHidden = false
                } else {
                    self?.animationView.isHidden = true
                }

                self?.viewModel.hideLoading()
                self?.tableView.reloadData()
            }
        }
    }

    /// アニメーションの設定
    func setLottieView() {
        view.addSubview(animationView)
        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.heightAnchor.constraint(equalToConstant: 130.0).isActive = true
        animationView.widthAnchor.constraint(equalToConstant: 130.0).isActive = true
        animationView.topAnchor.constraint(equalTo: uiSearchBar.bottomAnchor, constant: UIScreen.main.bounds.size.height / 4).isActive = true
        animationView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
    }

}





// MARK: 画面遷移
extension ViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Detail" {
            let detailViewController = segue.destination as! DetailViewController
            detailViewController.viewController = self
        }
    }
}





// MARK: UITableView
extension ViewController {

    /// セルの個数を計算
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewModel.repo.items.count
    }

    /// Cellの高さを計算
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }

    /// セルの生成
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tableView.separatorInset = .zero // TabelViewの区切り線を端まで伸ばす

        let cell = tableView.dequeueReusableCell(withIdentifier: "Repository", for: indexPath) as! RepositoryTableViewCell
        let rp = self.viewModel.repo.items[indexPath.row]

        // カスタムセルをセット
        cell.setCell(avatarUrl: rp.owner.avatar_url, login: rp.owner.login, name: rp.name, language: rp.language ?? "No Language")

        cell.tag = indexPath.row

        return cell
    }

    /// セルのタップ時に呼び出される
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.viewModel.cellIndex = indexPath.row
        performSegue(withIdentifier: "Detail", sender: self)
    }

}





// MARK: UISearchBar
extension ViewController: UISearchBarDelegate {

    /// キャンセルボタンを表示
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar){
        self.uiSearchBar.setShowsCancelButton(true, animated: true)
    }

    /// キャンセルボタンを押したら非表示
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        self.uiSearchBar.resignFirstResponder()
        self.uiSearchBar.setShowsCancelButton(false, animated: true)
    }

    /// 入力に変更があったらリセット
    func searchBar(_ searchBar: UISearchBar, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if !self.viewModel.repo.items.isEmpty {
            self.viewModel.resetSearchRepositories()
        }
        return true
    }

    /// xボタンが押されたらリセット
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty {
            self.viewModel.resetSearchRepositories()
        }
    }

    /// 検索
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        self.viewModel.showLoading()
        view.endEditing(true) // 遷移から戻る時に強制的に上にスクロールするバグを修正

        guard let searchBarText = searchBar.text else { return }

        if searchBarText.count != 0 {
            self.viewModel.getRepositories(searchBarText: searchBarText) {
                self.viewModel.hideLoading()
                self.viewModel.alert(self, title: "Error", message: "Repository not found")
            } missAlert: {
                self.viewModel.hideLoading()
                self.viewModel.alert(self, title: "Error", message: "Request failed")
            } offlineAlert: {
                self.viewModel.hideLoading()
                self.viewModel.alert(self, title: "Error", message: "Offline")
            }
        } else {
            self.viewModel.hideLoading()
            self.viewModel.alert(self, title: "Error", message: "Not entered")
        }
    }

}
