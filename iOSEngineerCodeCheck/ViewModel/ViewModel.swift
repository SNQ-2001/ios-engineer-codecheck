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

    /// ネットワーク監視
    private let monitor = NWPathMonitor()
    private let queue = DispatchQueue(label: "com.iOSEngineerCodeCheck.Network")
    public var networkStatus: Bool = false

    /// 更新フラグ
    public var reloadFlag: Bool = false

    /// リポジトリを取得するページ数
    public var pageCount: Int = 1

    /// リロードハンドラー
    /// アクションをViewControllerから受け取る
    public var reloadHandler: () -> Void = { }


    /// リポジトリ情報の格納庫
    /// 変更が検知されるとリロードハンドラーが実行される
    public var repo: [Item] = [] {
        didSet {
            reloadHandler()
        }
    }

    /// セルインデックス
    public var cellIndex: Int?

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
    /// ページを1に戻す
    public func resetSearchRepositories() {
        self.repo = []
        self.pageCount = 1
    }

    /// ローディング開始
    public func showLoading() {
        PKHUD.sharedHUD.show()
    }

    /// ローディング終了
    public func hideLoading() {
        PKHUD.sharedHUD.hide(true)
    }

    /// レスポンスからエラーメッセージを受け取って返却
    ///
    ///  - parameters:
    ///   - response: レスポンスを受け取る
    ///   - missAlert: レスポンスのエラーメッセージを返却
    ///
    public func throwsError(response: Data?, errorAlert: @escaping (String) -> Void) {
        do {
            guard let data = response else { return }
            let repositories = try JSONDecoder().decode(RequestError.self, from: data)
            errorAlert(repositories.message)
        } catch {
            errorAlert("Request failed")
        }
    }

}
