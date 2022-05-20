//
//  ViewModel.swift
//  iOSEngineerCodeCheck
//
//  Created by 宮本大新 on 2022/05/17.
//  Copyright © 2022 YUMEMI Inc. All rights reserved.
//

import PKHUD
import Alamofire

// MARK: 共通
class ViewModel: NSObject {

    /// リロードハンドラー
    /// アクションをViewControllerから受け取る
    var reloadHandler: () -> Void = {  }


    /// リポジトリ情報の格納庫
    /// 変更が検知されるとリロードハンドラーが実行される
    var repo: SearchRepositories = SearchRepositories(total_count: 0, incomplete_results: false, items: []) {
        didSet {
            reloadHandler()
        }
    }

    /// セルインデックス
    var cellIndex: Int!

    /// リセット
    /// リポジトリ情報の格納庫を空にする
    func resetSearchRepositories() {
        self.repo = SearchRepositories(total_count: 0, incomplete_results: false, items: [])
    }

    /// ローディング開始
    func showLoading() {
        PKHUD.sharedHUD.show()
    }

    /// ローディング終了
    func hideLoading() {
        PKHUD.sharedHUD.hide(true)
    }

}
