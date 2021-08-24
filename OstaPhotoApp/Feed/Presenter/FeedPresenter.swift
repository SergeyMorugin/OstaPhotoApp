//
//  FeedFeedPresenter.swift
//  OstaPhotoApp
//
//  Created by Sergei Morugin on 24/08/2021.
//  Copyright © 2021 Osta Inc.. All rights reserved.
//

class FeedPresenter: FeedModuleInput, FeedViewOutput, FeedInteractorOutput {

    weak var view: FeedViewInput!
    var interactor: FeedInteractorInput!
    var router: FeedRouterInput!

    func viewIsReady() {

    }
}
