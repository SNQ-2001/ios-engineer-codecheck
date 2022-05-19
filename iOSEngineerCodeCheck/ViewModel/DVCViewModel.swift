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

    // アラート
    func alert(_ viewController: DetailViewController, title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle:  .alert)
        let OK = UIAlertAction(title: "OK", style: .default) { (action: UIAlertAction!) -> Void in }
        alert.addAction(OK)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
            viewController.present(alert, animated: true, completion: nil)
        }
    }

    // イシュー数, スター数, フォーク数が1000を超えたら省略する
    func calcNumericalValue(count: Int) -> String {
        if count >= 1000000 {
            let i = Double(count) / 100000
            if "\(Double(round(i) / 10))M".contains(".0") {
                return "\(Double(round(i) / 10))M".replacingOccurrences(of: ".0", with: "")
            } else {
                return "\(Double(round(i) / 10))M"
            }
        } else if count >= 1000 {
            let i = Double(count) / 10000
            if "\(round(i * 100) / 10)K".contains(".0") {
                return "\(round(i * 100) / 10)K".replacingOccurrences(of: ".0", with: "")
            } else {
                return "\(round(i * 100) / 10)K"
            }
        } else {
            return "\(count)"
        }
    }

    // サファリ開く
    func showSafariView(_ viewController: DetailViewController, url: String) {
        let safariViewController = SFSafariViewController(url: NSURL(string: url)! as URL)
        safariViewController.modalPresentationStyle = .overFullScreen
        viewController.present(safariViewController, animated: true, completion: nil)
    }

    // グラデーション背景作成
    func createGradient(_ viewController: DetailViewController, repo: Item) {
        let topTrailingColor = UIColor(language: repo.language ?? "No Language")
        let bottomLeadingColor = UIColor(language: repo.language ?? "No Language").gradient
        let gradientColors: [CGColor] = [topTrailingColor.cgColor, bottomLeadingColor.cgColor]

        let gradientLayer: CAGradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColors
        gradientLayer.startPoint = CGPoint.init(x: 1, y: 0)
        gradientLayer.endPoint = CGPoint.init(x: 0, y:1)
        gradientLayer.frame = viewController.view.bounds
        viewController.view.layer.insertSublayer(gradientLayer, at: 0)
    }

    // アカウント情報の取得
    func getAcountInfo(url: String, completion: @escaping (AccountInfo) -> Void, missAlert: @escaping () -> Void) {
        AF.request(url, method: .get).responseData { response in
            do {
                guard let data = response.data else { return }
                let accountInfo = try JSONDecoder().decode(AccountInfo.self, from: data)
                completion(accountInfo)
            } catch {
                missAlert()
            }
        }
    }

}
