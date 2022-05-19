//
//  ViewController.swift
//  iOSEngineerCodeCheck
//
//  Created by 史 翔新 on 2020/04/20.
//  Copyright © 2020 YUMEMI Inc. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage
import PKHUD

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

    let viewModel = ViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()

        // リロードハンドラー
        self.initViewModel()

        // サーチバーの設定
        self.uiSearchBar.delegate = self
        self.uiSearchBar.placeholder = "GitHubのリポジトリを検索できるよー"

        // ナビゲーションビューにアイコンの設定
        self.navigationItem.titleView = icon

        // ローディングビューの設定
        PKHUD.sharedHUD.contentView = PKHUDProgressView()

    }

    private func initViewModel() {
        self.viewModel.reloadHandler = { [weak self] in
            DispatchQueue.main.async {
                self?.viewModel.hideLoading()
                self?.tableView.reloadData()
            }
        }
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

    // セルの個数を計算
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewModel.repo.items.count
    }

    // Cellの高さを計算
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }

    // セルの生成
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        tableView.separatorInset = .zero // TabelViewの区切り線を端まで伸ばす

        let cell = tableView.dequeueReusableCell(withIdentifier: "Repository", for: indexPath) as! RepositoryTableViewCell
        let rp = self.viewModel.repo.items[indexPath.row]

        // カスタムセルをセット
        cell.setCell(avatarUrl: rp.owner.avatar_url, login: rp.owner.login, name: rp.name, language: rp.language ?? "No Language")

        cell.tag = indexPath.row

        return cell

    }

    // セルのタップ時に呼び出される
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        self.viewModel.cellIndex = indexPath.row
        performSegue(withIdentifier: "Detail", sender: self)

    }

}

// MARK: UISearchBar
extension ViewController: UISearchBarDelegate {

    // 入力に変更があったらリセット
    func searchBar(_ searchBar: UISearchBar, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {

        if !self.viewModel.repo.items.isEmpty {
            viewModel.resetSearchRepositories()
        }
        return true

    }

    // 検索
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        self.viewModel.showLoading()
        view.endEditing(true) // 遷移から戻る時に強制的に上にスクロールするバグを修正

        guard let searchBarText = searchBar.text else { return }

        if searchBarText.count != 0 {
            self.viewModel.getRepositories(searchBarText: searchBarText) {
                self.viewModel.hideLoading()
                self.viewModel.alert(self, title: "エラー", message: "リポジトリが見つかりません。")
            } missAlert: {
                self.viewModel.hideLoading()

                self.viewModel.alert(self, title: "エラー", message: "リポジトリの取得に失敗しました。")
            }
        } else {
            self.viewModel.hideLoading()
            self.viewModel.alert(self, title: "エラー", message: "入力されていません。")
        }

    }

}
