//
//  ErrorModel.swift
//  iOSEngineerCodeCheck
//
//  Created by 宮本大新 on 2022/05/21.
//  Copyright © 2022 YUMEMI Inc. All rights reserved.
//

import Foundation

// MARK: - RequestError
struct RequestError: Codable {
    let message: String

    enum CodingKeys: String, CodingKey {
        case message
    }
}