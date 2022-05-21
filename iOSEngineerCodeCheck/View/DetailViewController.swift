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
import JXMarqueeView

class DetailViewController: UIViewController {

    // Accountカード
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: JXMarqueeView!
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var bioLabel: JXMarqueeView!
    @IBOutlet weak var showAccountButton: UIButton!

    // Repositoryカード
    @IBOutlet weak var repositoryNameLabel: JXMarqueeView!
    @IBOutlet weak var repositoryDescriptionLabel: UILabel!
    @IBOutlet weak var starLabel: UILabel!
    @IBOutlet weak var forkLabel: UILabel!
    @IBOutlet weak var issueLabel: UILabel!
    @IBOutlet weak var chartView: PieChartView!
    @IBOutlet weak var showRepositoryButton: UIButton!
    
    var viewController: ViewController!

    override func viewDidLoad() {
        super.viewDidLoad()

        let repo = viewController.viewModel.repo[viewController.viewModel.cellIndex]

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
            url: self.viewController.viewModel.repo[viewController.viewModel.cellIndex].owner.url
        ) { error in
            self.viewController.viewModel.alert(self, title: NSLocalizedString("Error", comment: ""), message: error)
        } offlineAlert: {
            self.viewController.viewModel.alert(self, title: NSLocalizedString("Error", comment: ""), message: NSLocalizedString("Offline", comment: ""))
        } completion: { accountInfo in
            self.nameLabel.viewTransition(0.4)
            self.loginLabel.viewTransition(0.6)
            self.bioLabel.viewTransition(0.8)

            // 流れる文字ラベル(nameLabel)
            let name = UILabel()
            name.textColor = UIColor.black
            name.font = UIFont.systemFont(ofSize: 30, weight: .bold)
            name.text = accountInfo.name
            self.nameLabel.contentView = name
            self.nameLabel.contentMargin = 50
            self.nameLabel.marqueeType = .left

            // アカウントIDラベル(loginLabel)
            self.loginLabel.text = accountInfo.login

            // 流れる文字ラベル(bioLabel)
            let bio = UILabel()
            bio.textColor = UIColor.black
            bio.font = UIFont.systemFont(ofSize: 13, weight: .regular)
            bio.text = accountInfo.bio ?? ""
            self.bioLabel.contentView = bio
            self.bioLabel.contentMargin = 50
            self.bioLabel.marqueeType = .left
        }

        // ボタンに言語カラーを設定
        self.showAccountButton.backgroundColor = UIColor(language: repo.language ?? "No Language")
        self.showRepositoryButton.backgroundColor = UIColor(language: repo.language ?? "No Language")


        // リポジトリ情報を表示(リポジトリの名前, リポジトリの説明, イシュー数, スター数, フォーク数)
        /// リポジトリの名前 - 流れる文字ラベル(repositoryNameLabel)
        let repositoryName = UILabel()
        repositoryName.textColor = UIColor.black
        repositoryName.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        repositoryName.text = repo.name
        self.repositoryNameLabel.contentView = repositoryName
        self.repositoryNameLabel.contentMargin = 50
        self.repositoryNameLabel.marqueeType = .left

        /// リポジトリ説明
        self.repositoryDescriptionLabel.text = repo.description

        /// イシュー数, スター数, フォーク数
        self.issueLabel.text = "\(repo.open_issues_count.calcNumericalValue()) issues"
        self.starLabel.text = "\(repo.stargazers_count.calcNumericalValue()) stars"
        self.forkLabel.text = "\(repo.forks_count.calcNumericalValue()) forks"

        // Chartsの設定
        self.chartView.delegate = self

        // 使用言語割合グラフを表示
        self.setChart()
        
    }

    @IBAction func showAccount(_ sender: Any) {
        self.viewController.viewModel.showSafariView(self, url: viewController.viewModel.repo[viewController.viewModel.cellIndex].owner.html_url)
    }

    @IBAction func showRepository(_ sender: Any) {
        self.viewController.viewModel.showSafariView(self, url: viewController.viewModel.repo[viewController.viewModel.cellIndex].html_url)
    }

}


extension DetailViewController: ChartViewDelegate {
    private func setChart() {
        chartView.drawEntryLabelsEnabled = false // グラフラのラベルを非表示
        chartView.chartDescription.enabled = false // グラフの説明文を非表示
        chartView.holeColor = .clear // 中央のくり抜き円の色
        chartView.holeRadiusPercent = 0.58 // 中央のくり抜き円の大きさ

        chartView.rotationEnabled = false // 回転無効化
        chartView.highlightPerTapEnabled = false // タップを無効化
        chartView.noDataTextColor = .clear // データなしの場合のテキストを透明にする

        // 半円用グラフ(これがないと円になる)
        chartView.maxAngle = 180
        chartView.rotationAngle = 180
        chartView.centerTextOffset = CGPoint(x: 0, y: -20)

        // 凡例の設定
        let l = chartView.legend
        l.textColor = .black
        l.horizontalAlignment = .center
        l.verticalAlignment = .bottom
        l.orientation = .horizontal
        l.drawInside = false
        l.xEntrySpace = 5
        l.yEntrySpace = 0

        // 使用言語を取得
        self.viewController.viewModel.getLanguages(
            url: viewController.viewModel.repo[viewController.viewModel.cellIndex].languages_url
        ) { (languagesNameArray, languagesValueArray)  in
            self.setData(languagesNameArray, languagesValueArray)
        }

        chartView.animate(xAxisDuration: 1.4, easingOption: .easeInOutCubic) // グラフに表示アニメーションを設定
    }

    private func setData(_ languagesNameArray: [String], _ languagesValueArray: [Int]) {

        let languagesArray = self.viewController.viewModel.createLanguageArray(languagesNameArray: languagesNameArray, languagesValueArray: languagesValueArray)

        // PieChartデータを作成
        let entries = (0..<languagesArray.0.count).map { (i) -> PieChartDataEntry in
            return PieChartDataEntry(
                value: Double(languagesArray.1[i % languagesArray.1.count]),
                label: languagesArray.0[i % languagesArray.0.count]
            )
        }

        let set = PieChartDataSet(entries: entries, label: "")
        set.sliceSpace = 0 // 項目間のスペースを0にする
        set.selectionShift = 20 // 縮小

        // 使用言語割合グラフに適用する言語カラー配列を作成する
        let colors = self.viewController.viewModel.createLanguageColorArray(languagesArray: languagesArray.0)
        set.colors = colors // グラフの色

        let data = PieChartData(dataSet: set)
        chartView.data = data

        // 言語が多いとゴチャゴチャになるので値の非表示
        for set in chartView.data! {
            set.drawValuesEnabled = !set.drawValuesEnabled
        }

        chartView.viewTransition(0.4)
        chartView.setNeedsDisplay()
    }
}
