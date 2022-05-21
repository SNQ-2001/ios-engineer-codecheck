//
//  DVCViewModel.swift
//  iOSEngineerCodeCheck
//
//  Created by 宮本大新 on 2022/05/19.
//  Copyright © 2022 YUMEMI Inc. All rights reserved.
//

import UIKit
import Alamofire
import SafariServices

// MARK: DetailViewController
extension ViewModel {

    /// アラートを表示
    /// アニメーションと被るのを防ぐ為、表示を0.6秒遅らせています
    ///
    /// - parameters:
    ///  - dvc: 表示する画面を指定（self）
    ///  - title: アラートのタイトル
    ///  - message: アラートのメッセージ
    ///
    public func alert(_ dvc: DetailViewController, title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle:  .alert)
        let OK = UIAlertAction(title: "OK", style: .default) { (action: UIAlertAction!) -> Void in }
        alert.addAction(OK)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
            dvc.present(alert, animated: true, completion: nil)
        }
    }

    /// サファリ開く
    /// アカウントページ or リポジトリページ をSafariServicesで開く
    ///
    /// - parameters:
    ///  - dvc: 表示する画面を指定（self）
    ///  - url: 表示するURLを指定
    ///
    public func showSafariView(_ dvc: DetailViewController, url: String) {
        let safariViewController = SFSafariViewController(url: NSURL(string: url)! as URL)
        safariViewController.modalPresentationStyle = .overFullScreen
        dvc.present(safariViewController, animated: true, completion: nil)
    }

    /// 言語カラーでグラデーション背景色を作成
    ///
    /// - parameters:
    ///  - dvc: 表示する画面を指定（self）
    ///  - repo: リポジトリ情報（言語情報用）
    ///
    public func createGradient(_ dvc: DetailViewController, repo: Item) {
        let topTrailingColor = UIColor(language: repo.language ?? "No Language")
        let bottomLeadingColor = UIColor(language: repo.language ?? "No Language").gradient
        let gradientColors: [CGColor] = [topTrailingColor.cgColor, bottomLeadingColor.cgColor]

        let gradientLayer: CAGradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColors
        gradientLayer.startPoint = CGPoint.init(x: 1, y: 0)
        gradientLayer.endPoint = CGPoint.init(x: 0, y:1)
        gradientLayer.frame = dvc.view.bounds
        dvc.view.layer.insertSublayer(gradientLayer, at: 0)
    }

    /// アカウント情報の取得
    /// リポジトリ情報で取得できないアカウント名やbioを取得
    ///
    /// - parameters:
    ///  - url: アカウント情報の取得可能なAPIをリポジトリ情報から指定します
    ///  - errorAlert: 通信失敗 or デコード失敗 で実行されます（レートリミットがほとんど）
    ///  - offlineAlert: インターネットに接続されていない場合に実行されます
    ///  - completion: アカウント情報を返します
    ///
    /// EX) https://api.github.com/users/apple
    ///
    public func getAcountInfo(
        url: String,
        errorAlert: @escaping (String) -> Void,
        offlineAlert: @escaping () -> Void,
        completion: @escaping (AccountInfo) -> Void
    ) {
        if networkStatus {
            AF.request(url, method: .get).responseData { response in
                do {
                    guard let data = response.data else { return }
                    let accountInfo = try JSONDecoder().decode(AccountInfo.self, from: data)
                    completion(accountInfo)
                } catch {
                    self.throwsError(response: response.data) { error in
                        errorAlert(error)
                    }
                }
            }
        } else {
            offlineAlert()
        }
    }

    /// リポジトリで使用されている言語を取得
    /// ↓
    /// 使用割合の高い順に並び替え
    ///
    /// - parameters:
    ///  - url: 言語情報の取得可能なAPIをリポジトリ情報から指定
    ///  - completion: 言語リストと言語割合リストを返す
    ///
    /// EX) https://api.github.com/repos/apple/swift/languages
    ///
    public func getLanguages(
        url: String,
        completion: @escaping ([String], [Int]) -> Void
    ) {
        var languagesNameArray: [String] = []
        var languagesValueArray: [Int] = []
        
        AF.request(url, method: .get).responseData { response in
            do {
                guard let data = response.data else { return }
                let languages = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Int]
                guard let languagesDict = languages else { return }

                // 使用割合の高い言語順に並び替える
                let languagesSort = languagesDict.sorted { $0.1 > $1.1 } .map { $0 }

                for language in languagesSort {
                    languagesNameArray.append(language.key)
                    languagesValueArray.append(language.value)
                }
                completion(languagesNameArray, languagesValueArray)
            } catch {
                completion(languagesNameArray, languagesValueArray)
            }
        }
    }

    /// 使用言語割合グラフ用のデータを作成する(言語選別)
    ///
    /// - parameters:
    ///  - languagesNameArray: 全ての使用言語名
    ///  - languagesValueArray: 全ての使用言語割合
    ///
    /// - returns:
    ///  - newLanguagesNameArray: 使用割合が0.5%以上の言語名のみ
    ///  - newLanguagesValueArray: 使用割合が0.5%以上の言語割合のみ
    ///
    public func createLanguageArray(languagesNameArray: [String], languagesValueArray: [Int]) -> ([String], [Double]) {
        let languagesValueSum = languagesValueArray.reduce(0, +) // 配列合計

        var newLanguagesNameArray: [String] = []
        var newLanguagesValueArray: [Double] = []

        // 割合が0.5％以上の言語を配列に格納
        for i in 0..<languagesValueArray.count {
            let percent = floor((Double(languagesValueArray[i]) / Double(languagesValueSum)) * 1000) / 10
            if percent >= 0.5 {
                newLanguagesNameArray.append(languagesNameArray[i])
                newLanguagesValueArray.append(percent)
                print("\(languagesNameArray[i]): \(percent)%")
            }
        }

        var newLanguagesValueSum: Double = 0 // 割合合計

        for i in newLanguagesValueArray {
            newLanguagesValueSum += i
        }

        // 割合が0.5より小さい言語はOtherとしてまとめる & 言語がなかった場合、"No Language"を返す
        if (100 - newLanguagesValueSum) != 0.0 && (100 - newLanguagesValueSum) != 100.0 {
            newLanguagesNameArray.append("Other")
            newLanguagesValueArray.append(round((100 - newLanguagesValueSum) * 100) / 100)
            print("Other: \(floor((100 - newLanguagesValueSum) * 100) / 100)%")
        } else if (100 - newLanguagesValueSum) == 100.0 {
            newLanguagesNameArray.append("No Language")
            newLanguagesValueArray.append(100)
            print("No Language")
        }

        return (newLanguagesNameArray, newLanguagesValueArray)
    }

    /// 使用言語割合グラフに適用する言語カラー配列を作成
    ///
    /// - parameters:
    ///  - languagesArray: 言語配列
    ///
    /// - returns: 言語カラー配列
    ///
    public func createLanguageColorArray(languagesArray: [String]) -> [UIColor] {
        var colors: [UIColor] = []
        for i in languagesArray {
            colors.append(UIColor(language: i))
        }

        return colors
    }

}
