//
//  FeedFeedViewInput.swift
//  OstaPhotoApp
//
//  Created by Sergei Morugin on 24/08/2021.
//  Copyright © 2021 Osta Inc.. All rights reserved.
//

protocol FeedViewInput: AnyObject {

    /**
        @author Sergei Morugin
        Setup initial state of the view
    */

    func setupInitialState()
    
    func reloadData()
}
