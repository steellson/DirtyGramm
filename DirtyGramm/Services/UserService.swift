//
//  UserService.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 15.08.2023.
//

import Foundation
import Firebase

struct UserService {
    
    static func fetchUser(with uid: String) async throws -> User {
        let currentUserSnapshot = try await Firestore.firestore().collection("users").document(uid).getDocument()
        return try currentUserSnapshot.data(as: User.self)
    }

    static func fetchAllUsers() async throws -> [User] {
        let snapshot = try await Firestore.firestore().collection("users").getDocuments()
        return snapshot.documents.compactMap { try? $0.data(as: User.self) }
    }
}
