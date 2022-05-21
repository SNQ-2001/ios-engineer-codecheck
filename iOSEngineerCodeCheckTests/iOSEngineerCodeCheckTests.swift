//
//  iOSEngineerCodeCheckTests.swift
//  iOSEngineerCodeCheckTests
//
//  Created by 史 翔新 on 2020/04/20.
//  Copyright © 2020 YUMEMI Inc. All rights reserved.
//

import XCTest
@testable import iOSEngineerCodeCheck
import Alamofire

class iOSEngineerCodeCheckTests: XCTestCase {

    let viewModel = ViewModel()

    var viewController: ViewController!

    override func setUp() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        self.viewController = storyboard.instantiateInitialViewController() as? ViewController
    }

    override func tearDown() {
        super.tearDown()
    }

    // リセットが機能しているかテスト
    func testResetPageCount() {
        self.viewModel.resetSearchRepositories()
        
        XCTAssertEqual(viewModel.pageCount, 1)
    }

    // リセットが機能しているかテスト
    func testResetRepo() {
        self.viewModel.resetSearchRepositories()

        XCTAssertTrue(viewModel.repo.isEmpty)
    }

    // 言語の使用割合を正しく計算できているかテスト
    func testCreateLanguageArrays() {
        let languagesNameArray: [String] = ["C++", "Swift", "C", "Python", "CMake", "Objective-C", "Shell", "Objective-C++", "LLVM", "Emacs Lisp", "Batchfile", "Vim script", "Roff", "DTrace", "Makefile", "Ruby", "D", "sed"]
        let languagesValueArray: [Int] = [46780865, 38714129, 5428926, 1967517, 694021, 466082, 215387, 159688, 74481, 57594, 45943, 20025, 3683, 2593, 2361, 2132, 1107, 1050]
        
        let (newLanguagesNameArray, newLanguagesValueArray) = self.viewModel.createLanguageArray(languagesNameArray: languagesNameArray, languagesValueArray: languagesValueArray)

        XCTAssertEqual(newLanguagesNameArray, ["C++", "Swift", "C", "Python", "CMake", "Other"])

        XCTAssertEqual(newLanguagesValueArray, [49.4, 40.9, 5.7, 2.0, 0.7, 1.3])
    }

    func testPerformanceExample() {
        self.measure {
        }
    }
}
