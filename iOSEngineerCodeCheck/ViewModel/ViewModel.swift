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

    public var networkStatus: Bool = false

    /// リロードハンドラー
    /// アクションをViewControllerから受け取る
    public var reloadHandler: () -> Void = {  }


    /// リポジトリ情報の格納庫
    /// 変更が検知されるとリロードハンドラーが実行される
    public var repo: SearchRepositories = SearchRepositories(total_count: 0, incomplete_results: false, items: []) {
        didSet {
            reloadHandler()
        }
    }

    /// セルインデックス
    public var cellIndex: Int!

    /// ネットワークの接続チェック
    /// フラグで判定
    public func networkMonitoring() {
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
    public func resetSearchRepositories() {
        self.repo = SearchRepositories(total_count: 0, incomplete_results: false, items: [])
    }

    /// ローディング開始
    public func showLoading() {
        PKHUD.sharedHUD.show()
    }

    /// ローディング終了
    public func hideLoading() {
        PKHUD.sharedHUD.hide(true)
    }

}
