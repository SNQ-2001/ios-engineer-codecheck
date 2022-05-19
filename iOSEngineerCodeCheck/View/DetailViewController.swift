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

    // Accountカード
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var bioLable: UILabel!
    @IBOutlet weak var showAccountButton: UIButton!

    // Repositoryカード
    @IBOutlet weak var repositoryNameLabel: UILabel!
    @IBOutlet weak var repositoryDescriptionLabel: UILabel!
    @IBOutlet weak var starLabel: UILabel!
    @IBOutlet weak var forkLabel: UILabel!
    @IBOutlet weak var issueLabel: UILabel!
    @IBOutlet weak var chartView: PieChartView!
    @IBOutlet weak var showRepositoryButton: UIButton!
    
    var viewController: ViewController!

    override func viewDidLoad() {
        super.viewDidLoad()

        let repo = viewController.viewModel.repo.items[viewController.viewModel.cellIndex]

        // グラデーション背景を設定
        self.viewController.viewModel.createGradient(self, repo: repo)


        // プロフィール画像の表示
        self.imageView.af.setImage(
            withURL: URL(string: repo.owner.avatar_url)!,
            placeholderImage: UIImage(named: "placeholder")!,
            imageTransition: .crossDissolve(0.5)
        )

        // アカウント情報の表示(名前, ID, BIO)
        self.viewController.viewModel.getAcountInfo(
            url: viewController.viewModel.repo.items[viewController.viewModel.cellIndex].owner.url
        ) { accountInfo in
            self.nameLabel.viewTransition(0.4)
            self.loginLabel.viewTransition(0.6)
            self.bioLable.viewTransition(0.8)
            self.nameLabel.text = accountInfo.name
            self.loginLabel.text = accountInfo.login
            self.bioLable.text = accountInfo.bio ?? ""
        } missAlert: {
            self.viewController.viewModel.alert(self, title: "エラー", message: "アカウント情報の取得に失敗しました。")
        }

        // ボタンに言語カラーを設定
        self.showAccountButton.backgroundColor = UIColor(language: repo.language ?? "Nothing")
        self.showRepositoryButton.backgroundColor = UIColor(language: repo.language ?? "Nothing")


        // リポジトリ情報を表示(リポジトリの名前, リポジトリの説明, イシュー数, スター数, フォーク数)
        self.repositoryNameLabel.text = repo.name
        self.repositoryDescriptionLabel.text = repo.description

        self.issueLabel.text = "\(viewController.viewModel.calcNumericalValue(count: repo.open_issues_count)) issues"
        self.starLabel.text = "\(viewController.viewModel.calcNumericalValue(count: repo.stargazers_count)) stars"
        self.forkLabel.text = "\(viewController.viewModel.calcNumericalValue(count: repo.forks_count)) forks"


        // 使用言語割合グラフを表示
        self.createChart()
        
    }

    @IBAction func showAccount(_ sender: Any) {
        viewController.viewModel.showSafariView(self, url: viewController.viewModel.repo.items[viewController.viewModel.cellIndex].owner.html_url)
    }

    @IBAction func showRepository(_ sender: Any) {
        viewController.viewModel.showSafariView(self, url: viewController.viewModel.repo.items[viewController.viewModel.cellIndex].html_url)
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
