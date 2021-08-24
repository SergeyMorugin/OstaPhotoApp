//
//  FeedFeedPresenterTests.swift
//  OstaPhotoApp
//
//  Created by Sergei Morugin on 24/08/2021.
//  Copyright © 2021 Osta Inc.. All rights reserved.
//

import XCTest

class FeedPresenterTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    class MockInteractor: FeedInteractorInput {

    }

    class MockRouter: FeedRouterInput {

    }

    class MockViewController: FeedViewInput {

        func setupInitialState() {

        }
    }
}
