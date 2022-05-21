//
//  String+.swift
//  iOSEngineerCodeCheck
//
//  Created by 宮本大新 on 2022/05/21.
//  Copyright © 2022 YUMEMI Inc. All rights reserved.
//

import Foundation

/// URLエンコードを省略
extension String {
    var encode: String {
        self.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
    }
}
