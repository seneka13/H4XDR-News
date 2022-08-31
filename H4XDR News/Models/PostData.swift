//
//  PostData.swift
//  H4XDR News
//
//  Created by Samat Musaev on 25/8/22.
//

import Foundation

struct Results: Codable {
    let hits: [Post]
}

struct Post: Codable, Identifiable {
    var id: String {
        return objectID
    }
    let points: Int
    let title: String
    let url: String?
    let objectID: String
}
