//
//  User.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 10.08.2023.
//

import Foundation
import Firebase


struct User: Identifiable, Codable {
    
    let id: String
    
    let email: String
    var username: String
    var password: String
    
    var dateOfRegistration: Date
    var dateOfBirthday: Date
    var phoneNumber: String?

    // Advanced User Info
    var fullName: String?
    var personalImageUrl: String?
    var bio: String?
    
    // Media
    var posts: [Post]?
    var followers: [User]?
    var following: [User]?
    
    var isCurrentUser: Bool {
        guard let currentUserId = Auth.auth().currentUser?.uid else { return false }
        return currentUserId == id
    }

}

extension User: Equatable, Hashable {
    
    static func == (lhs: User, rhs: User) -> Bool {
        lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}


//MARK: - MOCK DATA

extension User {
    
    static var users: [User] = [
        
        .init(
            id: UUID().uuidString,
            email: "test@mail.ru",
            username: "djavriks",
            password: "!@#admin123",
            dateOfRegistration: Date(),
            dateOfBirthday: Date(),
            fullName: nil,
            bio: "Hellow world"
        ),
        
            .init(
                id: UUID().uuidString,
                email: "a.steellson@google.com",
                username: "steellson",
                password: "!@#admin123",
                dateOfRegistration: Date(),
                dateOfBirthday: Date(),
                fullName: "Andrew Steellson",
                bio: "3003300303 OYOYOOYOOY"
            ),
        
            .init(
                id: UUID().uuidString,
                email: "test@yandex.ru",
                username: "bitch777",
                password: "!@#admin123",
                dateOfRegistration: Date(),
                dateOfBirthday: Date(),
                fullName: "Low lifestyle",
                bio: "A.Y.E."
            ),
        
            .init(
                id: UUID().uuidString,
                email: "test@rambler.ru",
                username: "losh0k",
                password: "!@#admin123",
                dateOfRegistration: Date(),
                dateOfBirthday: Date(),
                fullName: "aweosmeboy",
                bio: "123"
            )
    ]
}
