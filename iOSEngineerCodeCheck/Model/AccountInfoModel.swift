//
//  AccountInfoModel.swift
//  iOSEngineerCodeCheck
//
//  Created by 宮本大新 on 2022/05/18.
//  Copyright © 2022 YUMEMI Inc. All rights reserved.
//

import Foundation

// MARK: - AccountInfo
struct AccountInfo: Codable {
    let name: String?
    let login: String
    let bio: String?
}
