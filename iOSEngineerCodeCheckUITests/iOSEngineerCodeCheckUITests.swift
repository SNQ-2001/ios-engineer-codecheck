//
//  iOSEngineerCodeCheckUITests.swift
//  iOSEngineerCodeCheckUITests
//
//  Created by 史 翔新 on 2020/04/20.
//  Copyright © 2020 YUMEMI Inc. All rights reserved.
//

import XCTest

class iOSEngineerCodeCheckUITests: XCTestCase {

    override func setUpWithError() throws {
        // ここにセットアップコードを入れます。このメソッドは、クラス内の各テストメソッドが呼び出される前に呼び出されます。

        // UIテストでは、通常、障害が発生したら即座に停止するのがベストです。
        continueAfterFailure = false

        // UI テストでは、テストを実行する前にインターフェイスの向きなどの初期状態を設定することが重要です。setUp メソッドは、これを行うのによい場所です。
    }

    override func tearDownWithError() throws {
        // ティアダウンコードをここに置く。このメソッドは、クラス内の各テストメソッドの呼び出しの後に呼び出されます。
    }

    func testExample() throws {
        // UIテストは、テストするアプリケーションを起動する必要があります。
        let app = XCUIApplication()
        app.launch()
        // UIテストを書き始めるには、録音を使用します。
        // XCTAssertと関連する関数を使用して、テストが正しい結果を生成することを検証してください。
    }

    func testLaunchPerformance() throws {
        if #available(iOS 15.0, *) {
            // これは、アプリケーションの起動にかかる時間を測定するものです。
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
