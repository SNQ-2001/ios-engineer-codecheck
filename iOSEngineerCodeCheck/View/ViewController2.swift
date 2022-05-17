//
//  ViewController2.swift
//  iOSEngineerCodeCheck
//
//  Created by 史 翔新 on 2020/04/21.
//  Copyright © 2020 YUMEMI Inc. All rights reserved.
//

import UIKit
import AlamofireImage

class ViewController2: UIViewController {
    
    @IBOutlet weak var ImgView: UIImageView!
    
    @IBOutlet weak var TtlLbl: UILabel!
    
    @IBOutlet weak var LangLbl: UILabel!
    
    @IBOutlet weak var StrsLbl: UILabel!
    @IBOutlet weak var WchsLbl: UILabel!
    @IBOutlet weak var FrksLbl: UILabel!
    @IBOutlet weak var IsssLbl: UILabel!
    
    var vc1: ViewController!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let repo = vc1.repo.items[vc1.idx]
        
        LangLbl.text = repo.language ?? "No Language"
        StrsLbl.text = "\(repo.stargazers_count) stars"
        WchsLbl.text = "\(repo.watchers_count) watchers"
        FrksLbl.text = "\(repo.forks_count) forks"
        IsssLbl.text = "\(repo.open_issues_count) open issues"

        getImage()
        
    }
    
    func getImage(){
        
        let repo = vc1.repo.items[vc1.idx]
        
        TtlLbl.text = repo.full_name

        // MARK: AlamofireImageに変更
        /// プレイスホルダー画像の設定
        /// 表示アニメーションの設定
        self.ImgView.af.setImage(
            withURL: URL(string: repo.owner.avatar_url)!,
            placeholderImage: UIImage(named: "identicon")!,
            imageTransition: .crossDissolve(0.5)
        )
    }
    
}
