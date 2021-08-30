//
//  FeedFeedInteractor.swift
//  OstaPhotoApp
//
//  Created by Sergei Morugin on 24/08/2021.
//  Copyright © 2021 Osta Inc.. All rights reserved.
//

class FeedInteractor: FeedInteractorInput {

    weak var output: FeedInteractorOutput!
    
    func fetchFeed(){
        let testFeedItems = [
            FeedItem(resultImage: "https://ostagram1.ams3.cdn.digitaloceanspaces.com/uploads/pimage/imageurl/4542264/img4259196_6f2926870970ee79.jpg"),
            FeedItem(resultImage: "https://ostagram1.ams3.cdn.digitaloceanspaces.com/uploads/pimage/imageurl/4723882/img4450954_ef5ebb38ea4e31b3.jpg"),
            FeedItem(resultImage: "https://ostagram1.ams3.cdn.digitaloceanspaces.com/uploads/pimage/imageurl/3839890/img3485559_a3f1cf451243aae4.jpg"),
            FeedItem(resultImage: "https://ostagram1.ams3.cdn.digitaloceanspaces.com/uploads/pimage/imageurl/4052931/img3717246_887f77a1c89cdf8a.jpg"),
            FeedItem(resultImage: "https://ostagram1.ams3.cdn.digitaloceanspaces.com/uploads/pimage/imageurl/4139996/img3814153_34b3e343f1055ccd.jpg"),
            FeedItem(resultImage: "https://ostagram1.ams3.cdn.digitaloceanspaces.com/uploads/pimage/imageurl/4156451/img3832265_0c00ad366e1eb233.jpg"),
            FeedItem(resultImage: "https://ostagram1.ams3.cdn.digitaloceanspaces.com/uploads/pimage/imageurl/3864166/img3512398_d80a2cfdd01be906.jpg"),
            FeedItem(resultImage: "https://ostagram1.ams3.cdn.digitaloceanspaces.com/uploads/pimage/imageurl/4353919/img4052119_a22eae5d80c8e16e.jpg"),
            FeedItem(resultImage: "https://ostagram1.ams3.cdn.digitaloceanspaces.com/uploads/pimage/imageurl/4405554/img4110596_ec871f9be9d8e468.jpg"),
        ]
        output.updateFeed(feedItems: testFeedItems)
    }
    
    

}
