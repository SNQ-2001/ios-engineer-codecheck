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
    public func alert(_ vc: TableViewController, title: String, message: String) {
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
    ///   - errorAlert: 通信失敗 or デコード失敗 で実行されます（レートリミットがほとんど）
    ///   - offlineAlert: インターネットに接続されていない場合に実行されます
    ///
    /// EX) https://api.github.com/search/repositories?q=Swift
    ///
    public func getRepositories(
        searchBarText: String,
        emptyAlert: @escaping () -> Void,
        errorAlert: @escaping (String) -> Void,
        offlineAlert: @escaping () -> Void
    ) {
        // 連続更新を避ける
        self.reloadFlag = true

        if self.networkStatus {
            AF.request(
                "https://api.github.com/search/repositories?q=\(searchBarText.encode)&page=\(pageCount)",
                method: .get
            ).responseData { response in
                self.repositoriesDecode(response: response.data) {
                    emptyAlert()
                } errorAlert: { error in
                    errorAlert(error)
                }

            }
        } else {
            offlineAlert()
            self.reloadFlag = false
        }
    }

    /// デコード
    /// ↓
    /// 結果が空 OR デコード成功 OR デコード失敗（レートリミットの場合）
    ///
    ///  - parameters:
    ///   - response: レスポンスを受け取ります
    ///   - emptyAlert: 検索結果が空だった場合に実行されます
    ///   - errorAlert: 通信失敗 or デコード失敗 で実行されます（レートリミットがほとんど）
    ///
    private func repositoriesDecode(response: Data?, emptyAlert: @escaping () -> Void, errorAlert: @escaping (String) -> Void) {
        do {
            guard let data = response else { return }
            let repositories = try JSONDecoder().decode(SearchRepositories.self, from: data)
            if repositories.items.isEmpty {
                emptyAlert()
            } else {
                self.repo += repositories.items
                self.pageCount += 1
                self.reloadFlag = false
            }
        } catch {
            self.throwsError(response: response) { error in
                errorAlert(error)
                self.reloadFlag = false
            }
        }
    }
    
}
