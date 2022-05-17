//
//  ViewModel.swift
//  iOSEngineerCodeCheck
//
//  Created by 宮本大新 on 2022/05/17.
//  Copyright © 2022 YUMEMI Inc. All rights reserved.
//

import Alamofire

class ViewModel: NSObject {

    var reloadHandler: () -> Void = {  }

    var repo: SearchRepositories = SearchRepositories(total_count: 0, incomplete_results: false, items: []) {
        didSet {
            reloadHandler()
        }
    }

    var cellIndex: Int!

    func alert(_ viewController: ViewController, title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle:  .alert)
        let OK = UIAlertAction(title: "OK", style: .default) { (action: UIAlertAction!) -> Void in }
        alert.addAction(OK)
        viewController.present(alert, animated: true, completion: nil)
    }

    func getRepositories(searchBarText: String, emptyAlert: @escaping () -> Void, missAlert: @escaping () -> Void) {
        // 全角が入力される可能性があるのでエンコード
        let query = searchBarText.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed)!
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
    }

}
