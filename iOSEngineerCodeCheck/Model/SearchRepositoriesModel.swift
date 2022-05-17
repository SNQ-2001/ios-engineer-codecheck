//
//  SearchRepositoriesModel.swift
//  iOSEngineerCodeCheck
//
//  Created by 宮本大新 on 2022/05/17.
//  Copyright © 2022 YUMEMI Inc. All rights reserved.
//

import Foundation

// MARK: - SearchRepositories
struct SearchRepositories: Codable {
    let total_count: Int
    let incomplete_results: Bool
    var items: [Item]
}

// MARK: - Item
struct Item: Codable {
    let name: String
    let full_name: String
    let owner: Owner
    let stargazers_count: Int
    let watchers_count: Int
    let language: String?
    let forks_count: Int
    let open_issues_count: Int
}

// MARK: - Owner
struct Owner: Codable {
    let avatar_url: String
    let url: String
    let html_url: String
    let followers_url: String
    let following_url: String
    let gists_url: String
    let starred_url: String
    let subscriptions_url: String
    let organizations_url: String
    let repos_url: String
    let events_url: String
    let received_events_url: String
}
