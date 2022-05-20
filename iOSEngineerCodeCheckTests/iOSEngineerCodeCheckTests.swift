//
//  iOSEngineerCodeCheckTests.swift
//  iOSEngineerCodeCheckTests
//
//  Created by 史 翔新 on 2020/04/20.
//  Copyright © 2020 YUMEMI Inc. All rights reserved.
//

import XCTest
@testable import iOSEngineerCodeCheck

class iOSEngineerCodeCheckTests: XCTestCase {

    let viewModel = ViewModel()

    override func setUpWithError() throws {
        // ここにセットアップコードを入れます。このメソッドは、クラス内の各テストメソッドが呼び出される前に呼び出されます。
    }

    override func tearDownWithError() throws {
        // ティアダウンコードをここに置く。このメソッドは、クラス内の各テストメソッドの呼び出しの後に呼び出されます。
    }

    func testPerformanceExample() throws {
        // これはパフォーマンステストケースの例です。
        self.measure {
            // ここに時間を計測したいコードを入れてください。
        }
    }
}
