//
//  FeedFeedPresenter.swift
//  OstaPhotoApp
//
//  Created by Sergei Morugin on 24/08/2021.
//  Copyright © 2021 Osta Inc.. All rights reserved.
//

class FeedPresenter: FeedModuleInput {
    weak var view: FeedViewInput!
    var interactor: FeedInteractorInput!
    var router: FeedRouterInput!
    var feedItems: [FeedItem] = []
}

extension FeedPresenter: FeedInteractorOutput {
    func updateFeed(feedItems: [FeedItem]) {
        self.feedItems = feedItems
        view.reloadData()
    }
}

extension FeedPresenter: FeedViewOutput {
    var feedItemsCount: Int {
        feedItems.count
    }
    
    func viewIsReady() {
        interactor.fetchFeed()
    }
    
    func feedItem(atIndex index: Int) -> FeedItem? {
        if feedItems.indices.contains(index) {
            return feedItems[index]
        } else {
            return nil
        }
    }
}


