//
//  FeedFeedConfigurator.swift
//  OstaPhotoApp
//
//  Created by Sergei Morugin on 24/08/2021.
//  Copyright © 2021 Osta Inc.. All rights reserved.
//

import UIKit

class FeedModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? FeedViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: FeedViewController) {

        let router = FeedRouter()

        let presenter = FeedPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = FeedInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
