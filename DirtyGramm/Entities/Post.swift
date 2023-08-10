//
//  Post.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 10.08.2023.
//

import Foundation


struct Post: Identifiable, Hashable, Codable {
    
    let id: String
    let ownerUid: String
    let description: String?
    let imageUrl: String
    var likes: Int
    let timestamp: Date
    
    var user: User?
}

extension Post {
    
    static var posts: [Post] = [
        
        .init(
            id: UUID().uuidString,
            ownerUid: UUID().uuidString,
            description: "Ahahhahaahaha",
            imageUrl: "profilePicTemp",
            likes: 34,
            timestamp: Date(),
            user: User.users[3]
        ),
        
            .init(
                id: UUID().uuidString,
                ownerUid: UUID().uuidString,
                description: nil,
                imageUrl: "profilePicTemp",
                likes: 903,
                timestamp: Date(),
                user: User.users[0]
            ),
        
            .init(
                id: UUID().uuidString,
                ownerUid: UUID().uuidString,
                description: "2",
                imageUrl: "profilePicTemp",
                likes: 0,
                timestamp: Date(),
                user: User.users[1]
            ),
        
            .init(
                id: UUID().uuidString,
                ownerUid: UUID().uuidString,
                description: "Ya sosal menya ebali",
                imageUrl: "profilePicTemp",
                likes: 3,
                timestamp: Date(),
                user: User.users[2]
            ),
        
            .init(
                id: UUID().uuidString,
                ownerUid: UUID().uuidString,
                description: "00303",
                imageUrl: "profilePicTemp",
                likes: 333,
                timestamp: Date(),
                user: User.users[3]
            )
    ]
}
