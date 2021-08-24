//
//  FeedFeedInitializer.swift
//  OstaPhotoApp
//
//  Created by Sergei Morugin on 24/08/2021.
//  Copyright © 2021 Osta Inc.. All rights reserved.
//

import UIKit

class FeedModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var feedViewController: FeedViewController!

    override func awakeFromNib() {

        let configurator = FeedModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: feedViewController)
    }

}
