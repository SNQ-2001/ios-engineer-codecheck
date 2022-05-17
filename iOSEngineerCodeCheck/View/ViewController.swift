//
//  ViewController.swift
//  iOSEngineerCodeCheck
//
//  Created by 史 翔新 on 2020/04/20.
//  Copyright © 2020 YUMEMI Inc. All rights reserved.
//

import UIKit
import Alamofire
import PKHUD

class ViewController: UITableViewController {

    @IBOutlet var uiSearchBar: UISearchBar!

    let viewModel = ViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        uiSearchBar.placeholder = "GitHubのリポジトリを検索できるよー"
        uiSearchBar.delegate = self
        initViewModel()

        PKHUD.sharedHUD.contentView = PKHUDProgressView()

    }

    private func initViewModel() {
        viewModel.reloadHandler = { [weak self] in
            DispatchQueue.main.async {
                PKHUD.sharedHUD.hide(true)
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

    // セルの生成
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = UITableViewCell()
        let rp = self.viewModel.repo.items[indexPath.row]
        cell.textLabel?.text = rp.full_name
        cell.detailTextLabel?.text = rp.language ?? "No Language"
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

    // 入力に変更があった際に呼び出されるメソッド.
    func searchBar(_ searchBar: UISearchBar, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {

        if !self.viewModel.repo.items.isEmpty {
            self.viewModel.repo = SearchRepositories(total_count: 0, incomplete_results: false, items: [])
        }
        return true

    }

    // 検索キータップ時に呼び出される
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        PKHUD.sharedHUD.show()
        view.endEditing(true) // 遷移から戻る時に強制的に上にスクロールするバグを修正

        guard let searchBarText = searchBar.text else { return }

        if searchBarText.count != 0 {
            self.viewModel.getRepositories(searchBarText: searchBarText) {
                PKHUD.sharedHUD.hide(true)
                self.viewModel.alert(self, title: "エラー", message: "リポジトリが見つかりません。")
            } missAlert: {
                PKHUD.sharedHUD.hide(true)
                self.viewModel.alert(self, title: "エラー", message: "リポジトリの取得に失敗しました。")
            }
        } else {
            PKHUD.sharedHUD.hide(true)
            self.viewModel.alert(self, title: "エラー", message: "入力されていません。")
        }

    }

}
