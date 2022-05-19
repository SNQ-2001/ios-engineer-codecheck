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

    var reloadHandler: () -> Void = {  }

    var repo: SearchRepositories = SearchRepositories(total_count: 0, incomplete_results: false, items: []) {
        didSet {
            reloadHandler()
        }
    }

    var cellIndex: Int!

    // リセット
    func resetSearchRepositories() {
        self.repo = SearchRepositories(total_count: 0, incomplete_results: false, items: [])
    }

    // ローディング開始
    func showLoading() {
        PKHUD.sharedHUD.show()
    }

    // ローディング終了
    func hideLoading() {
        PKHUD.sharedHUD.hide(true)
    }

}
