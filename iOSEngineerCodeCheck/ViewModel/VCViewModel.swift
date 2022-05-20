//
//  VCViewModel.swift
//  iOSEngineerCodeCheck
//
//  Created by 宮本大新 on 2022/05/19.
//  Copyright © 2022 YUMEMI Inc. All rights reserved.
//

import UIKit
import Alamofire

// MARK: ViewController
extension ViewModel {
    
    /// アラートを表示
    /// アニメーションと被るのを防ぐ為、表示を0.6秒遅らせています
    ///
    /// - parameters:
    ///  - vc: 表示する画面を指定（self）
    ///  - title: アラートのタイトル
    ///  - message: アラートのメッセージ
    ///  
    public func alert(_ vc: ViewController, title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle:  .alert)
        let OK = UIAlertAction(title: "OK", style: .default) { (action: UIAlertAction!) -> Void in }
        alert.addAction(OK)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
            vc.present(alert, animated: true, completion: nil)
        }
    }

    /// リポジトリ検索
    /// ここで取得されたデータがTableViewに表示されます
    ///
    ///  - parameters:
    ///   - searchBarText: サーチバーに入力されたテキスト
    ///   - emptyAlert: 検索結果が空だった場合に実行されます
    ///   - missAlert: 通信失敗 or デコード失敗 で実行されます
    ///
    /// EX) https://api.github.com/search/repositories?q=Swift
    ///
    public func getRepositories(
        searchBarText: String,
        emptyAlert: @escaping () -> Void,
        missAlert: @escaping () -> Void,
        offlineAlert: @escaping () -> Void
    ) {
        // 全角が入力される可能性があるのでエンコード
        let query = searchBarText.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""

        if self.networkStatus {
            AF.request("https://api.github.com/search/repositories?q=\(query)", method: .get).responseData { response in
                do {
                    guard let data = response.data else { return }
                    let repositories = try JSONDecoder().decode(SearchRepositories.self, from: data)
                    if repositories.items.isEmpty {
                        emptyAlert()
                    } else {
                        self.repo = repositories
                    }
                } catch {
                    missAlert()
                }
            }
        } else {
            offlineAlert()
        }
    }

}
