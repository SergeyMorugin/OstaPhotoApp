//
//  FeedFeedViewOutput.swift
//  OstaPhotoApp
//
//  Created by Sergei Morugin on 24/08/2021.
//  Copyright © 2021 Osta Inc.. All rights reserved.
//

protocol FeedViewOutput {
    func viewIsReady()
    
    var feedItemsCount: Int { get }
    func feedItem(atIndex: Int) -> FeedItem?
}
