//
//  ViewController2.swift
//  iOSEngineerCodeCheck
//
//  Created by 史 翔新 on 2020/04/21.
//  Copyright © 2020 YUMEMI Inc. All rights reserved.
//

import UIKit
import Charts
import Alamofire
import AlamofireImage
import SafariServices

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!

    @IBOutlet var nameLabel: UILabel!

    @IBOutlet var loginLabel: UILabel!

    @IBOutlet var bioLable: UILabel!

    @IBOutlet var showAccountButton: UIButton!
    @IBOutlet var showRepositoryButton: UIButton!

    @IBOutlet var repositoryNameLabel: UILabel!
    @IBOutlet var repositoryDescriptionLabel: UILabel!

    @IBOutlet weak var starLabel: UILabel!
    @IBOutlet weak var forkLabel: UILabel!
    @IBOutlet weak var issueLabel: UILabel!

    @IBOutlet weak var chartView: PieChartView!
    
    var viewController: ViewController!

    override func viewDidLoad() {
        super.viewDidLoad()

        let repo = viewController.viewModel.repo.items[viewController.viewModel.cellIndex]
        
        createGradient(repo: repo)

        showAccountButton.backgroundColor = UIColor(language: repo.language ?? "Nothing")
        showRepositoryButton.backgroundColor = UIColor(language: repo.language ?? "Nothing")
        
        repositoryNameLabel.text = repo.name
        repositoryDescriptionLabel.text = repo.description

        issueLabel.text = "\(calcNumericalValue(count: repo.open_issues_count)) issues"
        starLabel.text = "\(calcNumericalValue(count: repo.stargazers_count)) stars"
        forkLabel.text = "\(calcNumericalValue(count: repo.forks_count)) forks"

        getImage()

        getAcountInfo()

        createChart()
        
    }

    func calcNumericalValue(count: Int) -> String {
        if count >= 1000000 {
            let i = Double(count) / 100000
            if "\(Double(floor(i) / 10))M".contains(".0") {
                return "\(Double(floor(i) / 10))M".replacingOccurrences(of: ".0", with: "")
            } else {
                return "\(Double(floor(i) / 10))M"
            }
        } else if count >= 1000 {
            let i = Double(count) / 10000
            if "\(Double(floor(i) / 10))M".contains(".0") {
                return "\(floor(i * 100) / 10)K".replacingOccurrences(of: ".0", with: "")
            } else {
                return "\(floor(i * 100) / 10)K"
            }
        } else {
            return "\(count)"
        }
    }


    @IBAction func showAccount(_ sender: Any) {
        let safariViewController = SFSafariViewController(url: NSURL(string: viewController.viewModel.repo.items[viewController.viewModel.cellIndex].owner.html_url)! as URL)
        safariViewController.modalPresentationStyle = .overFullScreen
        present(safariViewController, animated: true, completion: nil)
    }


    @IBAction func showRepository(_ sender: Any) {
        let safariViewController = SFSafariViewController(url: NSURL(string: viewController.viewModel.repo.items[viewController.viewModel.cellIndex].html_url)! as URL)
        safariViewController.modalPresentationStyle = .overFullScreen
        present(safariViewController, animated: true, completion: nil)
    }

    func createGradient(repo: Item) {
        let topTrailingColor = UIColor(language: repo.language ?? "No Language")
        let bottomLeadingColor = UIColor(language: repo.language ?? "No Language").gradient
        let gradientColors: [CGColor] = [topTrailingColor.cgColor, bottomLeadingColor.cgColor]

        let gradientLayer: CAGradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColors
        gradientLayer.startPoint = CGPoint.init(x: 1, y: 0)
        gradientLayer.endPoint = CGPoint.init(x: 0, y:1)
        gradientLayer.frame = self.view.bounds
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    func getImage() {

        let repo = viewController.viewModel.repo.items[viewController.viewModel.cellIndex]

        // MARK: AlamofireImageに変更
        /// プレイスホルダー画像の設定
        /// 表示アニメーションの設定
        self.imageView.af.setImage(
            withURL: URL(string: repo.owner.avatar_url)!,
            placeholderImage: UIImage(named: "placeholder")!,
            imageTransition: .crossDissolve(0.5)
        )
    }

    func getAcountInfo() {
        AF.request(viewController.viewModel.repo.items[viewController.viewModel.cellIndex].owner.url, method: .get).responseData { response in
            do {
                guard let data = response.data else { return }
                let accountInfo = try JSONDecoder().decode(AccountInfo.self, from: data)
                self.nameLabel.viewTransition(0.4)
                self.loginLabel.viewTransition(0.6)
                self.bioLable.viewTransition(0.8)
                self.nameLabel.text = accountInfo.name
                self.loginLabel.text = accountInfo.login
                self.bioLable.text = accountInfo.bio ?? ""
            } catch {
                print("エラー")
            }
        }
    }
}


extension DetailViewController: ChartViewDelegate {
    func getLanguages(completion: @escaping ([String], [Int]) -> Void) {
        var languagesNameArray: [String] = []
        var languagesValueArray: [Int] = []
        AF.request(viewController.viewModel.repo.items[viewController.viewModel.cellIndex].languages_url, method: .get).responseData { response in
            do {
                guard let data = response.data else { return }
                let languages = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Int]
                guard let languagesDict = languages else { return }

                let languagesSort = languagesDict.sorted { $0.1 > $1.1 } .map { $0 }

                for language in languagesSort {
                    languagesNameArray.append(language.key)
                    languagesValueArray.append(language.value)
                }
                completion(languagesNameArray, languagesValueArray)
            } catch {
                print("エラー")
                completion(languagesNameArray, languagesValueArray)
            }
        }
    }
    func createChart() {
        chartView.delegate = self

        chartView.drawEntryLabelsEnabled = false // グラフラのラベルを非表示
        chartView.chartDescription.enabled = false // グラフの説明文を非表示
        chartView.holeColor = .clear // 中央の円の色
        chartView.holeRadiusPercent = 0.58 //　中央のくり抜き円の大きさ

        chartView.rotationEnabled = false
        chartView.highlightPerTapEnabled = true


        chartView.maxAngle = 180 // ハーフ円グラフ用
        chartView.rotationAngle = 180 // Rotate to make the half on the upper side
        chartView.centerTextOffset = CGPoint(x: 0, y: -20)

        let l = chartView.legend
        l.horizontalAlignment = .center
        l.verticalAlignment = .bottom
        l.orientation = .horizontal
        l.drawInside = false
        l.xEntrySpace = 5
        l.yEntrySpace = 0

        getLanguages() { (languagesNameArray, languagesValueArray)  in
            self.setDataCount(languagesNameArray, languagesValueArray)
        }

        chartView.animate(xAxisDuration: 1.4, easingOption: .easeInOutCubic)
    }
    func setDataCount(_ languagesNameArray: [String], _ languagesValueArray: [Int]) {

        let languagesValueSum = languagesValueArray.reduce(0, +) // 配列合計

        var newLanguagesNameArray: [String] = []
        var newLanguagesValueArray: [Double] = []


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

        if (100 - newLanguagesValueSum) != 0 {
            newLanguagesNameArray.append("Other")
            newLanguagesValueArray.append(round((100 - newLanguagesValueSum) * 100) / 100)
            print("Other: \(floor((100 - newLanguagesValueSum) * 100) / 100)%")
        }

        let entries = (0..<newLanguagesNameArray.count).map { (i) -> PieChartDataEntry in
            return PieChartDataEntry(
                value: Double(newLanguagesValueArray[i % newLanguagesValueArray.count]),
                label: newLanguagesNameArray[i % newLanguagesNameArray.count]
            )
        }
        let set = PieChartDataSet(entries: entries, label: "")
        set.sliceSpace = 0 // 項目間のスペースを0にする
        set.selectionShift = 20 // 縮小(おそらくタップした時だけ0になる -> タップした項目が拡大)

        var colors: [UIColor] = []
        for i in newLanguagesNameArray {
            colors.append(UIColor(language: i))
        }
        set.colors = colors // グラフの色

        let data = PieChartData(dataSet: set)

        chartView.data = data
        for set in chartView.data! {
            set.drawValuesEnabled = !set.drawValuesEnabled // 言語が多いとゴチャゴチャになるので値の非表示
        }
        chartView.viewTransition(0.4)
        chartView.setNeedsDisplay()
    }
}
