//
//  ViewController.swift
//  iOSEngineerCodeCheck
//
//  Created by 史 翔新 on 2020/04/20.
//  Copyright © 2020 YUMEMI Inc. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UITableViewController {

    @IBOutlet var uiSearchBar: UISearchBar!

    var repo: SearchRepositories = SearchRepositories(total_count: 0, incomplete_results: false, items: [])

    var cellIndex: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uiSearchBar.placeholder = "GitHubのリポジトリを検索できるよー"
        uiSearchBar.delegate = self
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

        return repo.items.count

    }

    // セルの生成
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = UITableViewCell()
        let rp = repo.items[indexPath.row]
        cell.textLabel?.text = rp.full_name
        cell.detailTextLabel?.text = rp.language ?? "No Language"
        cell.tag = indexPath.row

        return cell

    }

    // セルのタップ時に呼び出される
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        cellIndex = indexPath.row
        performSegue(withIdentifier: "Detail", sender: self)

    }

}

// MARK: UISearchBar
extension ViewController: UISearchBarDelegate {

    // 入力に変更があった際に呼び出されるメソッド.
    func searchBar(_ searchBar: UISearchBar, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {

        if !self.repo.items.isEmpty {
            self.repo = SearchRepositories(total_count: 0, incomplete_results: false, items: [])
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
        return true

    }

    // 検索キータップ時に呼び出される
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {

        view.endEditing(true) // 遷移から戻る時に強制的に上にスクロールするバグを修正

        guard let searchBarText = searchBar.text else { return }

        if searchBarText.count != 0 {
            getRepositories(searchBarText: searchBarText)
        } else {
            alert(title: "エラー", message: "入力されていません。")
        }

    }

    func getRepositories(searchBarText: String) {
        // 全角が入力される可能性があるのでエンコード
        let query = searchBarText.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed)!
        AF.request("https://api.github.com/search/repositories?q=\(query)", method: .get).responseData { response in
            do {
                guard let data = response.data else { return }
                let repositories = try JSONDecoder().decode(SearchRepositories.self, from: data)
                if repositories.items.isEmpty {
                    self.alert(title: "エラー", message: "リポジトリが見つかりません。")
                } else {
                    self.repo = repositories
                }
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            } catch {
                self.alert(title: "エラー", message: "リポジトリの取得に失敗しました。")
            }
        }
    }

    func alert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle:  .alert)
        let OK = UIAlertAction(title: "OK", style: .default) { (action: UIAlertAction!) -> Void in }
        alert.addAction(OK)
        present(alert, animated: true, completion: nil)
    }

}
