//
//  ViewModel.swift
//  iOSEngineerCodeCheck
//
//  Created by 宮本大新 on 2022/05/17.
//  Copyright © 2022 YUMEMI Inc. All rights reserved.
//

import PKHUD
import Network
import Alamofire

// MARK: 共通
class ViewModel: NSObject {

    private let monitor = NWPathMonitor()

    private let queue = DispatchQueue(label: "com.iOSEngineerCodeCheck.Network")

    var networkStatus: Bool = false

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

    
    func networkMonitoring() {
        self.monitor.pathUpdateHandler = { path in
            if path.status == .satisfied {
                self.networkStatus = true
            } else {
                self.networkStatus = false
            }
        }

        self.monitor.start(queue: queue)
    }

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
