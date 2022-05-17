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

    @IBOutlet weak var SchBr: UISearchBar!
    
    var repo: SearchRepositories = SearchRepositories(total_count: 0, incomplete_results: false, items: [])

    var word: String!
    var idx: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        SchBr.text = "GitHubのリポジトリを検索できるよー"
        SchBr.delegate = self
    }

    // 画面遷移
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "Detail"{
            let dtl = segue.destination as! ViewController2
            dtl.vc1 = self
        }
        
    }

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
        
        idx = indexPath.row
        performSegue(withIdentifier: "Detail", sender: self)
        
    }
    
}


extension ViewController: UISearchBarDelegate {

    // フォーカスが当たる際に呼び出される
    func searchBarShouldBeginEditing(_ searchBar: UISearchBar) -> Bool {
        // ↓こうすれば初期のテキストを消せる
        searchBar.text = ""
        return true
    }

    // テキストが変化したときに呼び出される
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {

    }

    // 検索キータップ時に呼び出される
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {

        word = searchBar.text!

        if word.count != 0 {
            // MARK: 通信はAlamofireを使用
            AF.request("https://api.github.com/search/repositories?q=\(word!)", method: .get).responseData { response in
                do {
                    guard let data = response.data else { return }
                    // MARK: 辞書パース から 構造体パースに変換
                    let repositories = try JSONDecoder().decode(SearchRepositories.self, from: data)
                    self.repo = repositories
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                    }
                } catch {
                    print(error.localizedDescription)
                }
            }
        }

    }
}
