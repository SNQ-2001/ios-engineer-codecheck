//
//  Int+.swift
//  iOSEngineerCodeCheck
//
//  Created by 宮本大新 on 2022/05/20.
//  Copyright © 2022 YUMEMI Inc. All rights reserved.
//

import Foundation

/// 数字が1000を超えたら省略する
///
/// - parameters:
///  - count: 変換する数字
///
/// - returns: 変換後の文字列を返す
///
public extension Int {
    func calcNumericalValue() -> String {
        if self >= 1000000 {
            let i = Double(self) / 100000
            if "\(Double(round(i) / 10))M".contains(".0") {
                return "\(Double(round(i) / 10))M".replacingOccurrences(of: ".0", with: "")
            } else {
                return "\(Double(round(i) / 10))M"
            }
        } else if self >= 1000 {
            let i = Double(self) / 10000
            if "\(round(i * 100) / 10)K".contains(".0") {
                return "\(round(i * 100) / 10)K".replacingOccurrences(of: ".0", with: "")
            } else {
                return "\(round(i * 100) / 10)K"
            }
        } else {
            return "\(self)"
        }
    }
}
