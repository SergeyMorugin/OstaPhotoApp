//
//  FeedFeedViewController.swift
//  OstaPhotoApp
//
//  Created by Sergei Morugin on 24/08/2021.
//  Copyright © 2021 Osta Inc.. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController, FeedViewInput {

    var output: FeedViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }


    // MARK: FeedViewInput
    func setupInitialState() {
    }
}
