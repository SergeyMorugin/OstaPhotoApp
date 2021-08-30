//
//  FeedFeedViewController.swift
//  OstaPhotoApp
//
//  Created by Sergei Morugin on 24/08/2021.
//  Copyright © 2021 Osta Inc.. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {
    var output: FeedViewOutput!
    let tableViewCellId = "feedItemCellId"
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        let configurator = FeedModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: self)
        output.viewIsReady()
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension FeedViewController: FeedViewInput {
    // MARK: FeedViewInput
    func setupInitialState() {
    }
    
    func reloadData() {
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
}


extension FeedViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.view.bounds.width
    }
}

extension FeedViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.output.feedItemsCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: self.tableViewCellId, for: indexPath) as? FeedItemCell else {
            return UITableViewCell()
        }
        guard let feedItem = output.feedItem(atIndex: indexPath.row) else {
            return UITableViewCell()
        }
        cell.configure(by: feedItem)
        return cell
    }

}
