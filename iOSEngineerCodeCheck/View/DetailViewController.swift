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
    
    var tableViewController: TableViewController!

    override func viewDidLoad() {
        super.viewDidLoad()

        let repo = tableViewController.viewModel.repo[tableViewController.viewModel.cellIndex ?? 0]

        // グラデーション背景を設定
        self.tableViewController.viewModel.createGradient(self, repo: repo)

        // プロフィール画像用データのアンラップ
        guard let url = URL(string: repo.owner.avatarURL) else { return }
        guard let image = UIImage(named: "placeholder") else { return }

        // プロフィール画像の表示
        self.imageView.af.setImage(
            withURL: url,
            placeholderImage: image,
            imageTransition: .crossDissolve(0.5)
        )

        // アカウント情報の表示(名前, ID, BIO)
        self.tableViewController.viewModel.getAcountInfo(
            url: self.tableViewController.viewModel.repo[tableViewController.viewModel.cellIndex ?? 0].owner.url
        ) { error in
            self.tableViewController.viewModel.alert(self, title: NSLocalizedString("Error", comment: ""), message: error)
        } offlineAlert: {
            self.tableViewController.viewModel.alert(self, title: NSLocalizedString("Error", comment: ""), message: NSLocalizedString("Offline", comment: ""))
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
        self.repositoryDescriptionLabel.text = repo.itemDescription

        /// イシュー数, スター数, フォーク数
        self.issueLabel.text = "\(repo.openIssuesCount.calcNumericalValue()) issues"
        self.starLabel.text = "\(repo.stargazersCount.calcNumericalValue()) stars"
        self.forkLabel.text = "\(repo.forksCount.calcNumericalValue()) forks"

        // Chartsの設定
        self.chartView.delegate = self

        // 言語の使用割合グラフを表示
        self.setChart()
        
    }

    @IBAction func showAccount(_ sender: Any) {
        self.tableViewController.viewModel.showSafariView(self, url: tableViewController.viewModel.repo[tableViewController.viewModel.cellIndex ?? 0].owner.htmlURL)
    }

    @IBAction func showRepository(_ sender: Any) {
        self.tableViewController.viewModel.showSafariView(self, url: tableViewController.viewModel.repo[tableViewController.viewModel.cellIndex ?? 0].htmlURL)
    }

}


extension DetailViewController: ChartViewDelegate {
    /// 言語の使用割合グラフを表示
    /// グラフの設定
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
        self.tableViewController.viewModel.getLanguages(
            url: tableViewController.viewModel.repo[tableViewController.viewModel.cellIndex ?? 0].languagesURL
        ) { (languagesNameArray, languagesValueArray)  in
            self.setData(languagesNameArray, languagesValueArray)
        }

        chartView.animate(xAxisDuration: 1.4, easingOption: .easeInOutCubic) // グラフに表示アニメーションを設定
    }


    /// 言語の使用割合グラフ
    /// データの作成
    private func setData(_ languagesNameArray: [String], _ languagesValueArray: [Int]) {

        let languagesTuple = self.tableViewController.viewModel.createLanguageArray(languagesNameArray: languagesNameArray, languagesValueArray: languagesValueArray)

        // PieChartデータを作成
        let entries = (0..<languagesTuple.0.count).map { (i) -> PieChartDataEntry in
            return PieChartDataEntry(
                value: Double(languagesTuple.1[i % languagesTuple.1.count]),
                label: languagesTuple.0[i % languagesTuple.0.count]
            )
        }

        let set = PieChartDataSet(entries: entries, label: "")
        set.sliceSpace = 0 // 項目間のスペースを0にする
        set.selectionShift = 20 // 縮小

        // 使用言語割合グラフに適用する言語カラー配列を作成する
        let colors = self.tableViewController.viewModel.createLanguageColorArray(languagesArray: languagesTuple.0)
        set.colors = colors // グラフの色

        let data = PieChartData(dataSet: set)
        chartView.data = data

        // アンラップ
        guard let chartData = chartView.data else { return }

        // 言語が多いとゴチャゴチャになるので値の非表示
        for set in chartData {
            set.drawValuesEnabled = !set.drawValuesEnabled
        }

        chartView.viewTransition(0.4)
        chartView.setNeedsDisplay()
    }
}
