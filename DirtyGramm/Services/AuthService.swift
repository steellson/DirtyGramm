//
//  AuthService.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 11.08.2023.
//

import Foundation
import FirebaseAuth
import FirebaseFirestoreSwift
import Firebase

final class AuthService {
    
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: User?
    
    static let shared = AuthService()
    
    
    init() {
        Task {
            do {
                try await loadUserData()
            } catch (let error) {
                print("DEBUG: Error when loading user data: \(error.localizedDescription)")
            }
        }
    }
    
    @MainActor
    func login(with email: String, password: String) async throws {
        
        do {
            let result = try await Auth.auth().signIn(
                withEmail: email,
                password: password
            )
            self.userSession = result.user
            
            try await loadUserData()
            
        } catch (let error) {
            print("DEBUG: Error when trying to sign in: \(error.localizedDescription)")
        }
    }
    
    @MainActor
    func createUser(with username: String, email: String, password: String) async throws {
        
        do {
            
            let result = try await Auth.auth().createUser(
                withEmail: email,
                password: password
            )
            self.userSession = result.user
            
            await uploadUserData(
                with: result.user.uid,
                username: username,
                email: email
            )
                        
        } catch (let error) {
            print("DEBUG: Error when trying to create user: \(error.localizedDescription)")
        }
    }
    
    @MainActor
    func loadUserData() async throws {
        
        self.userSession = Auth.auth().currentUser
        guard let currentUid = Auth.auth().currentUser?.uid else {
            print("DEBUG: Fetching UID error!"); return
        }
        let currentUserSnapshot = try await Firestore.firestore().collection("users").document(currentUid).getDocument()
        self.currentUser = try? currentUserSnapshot.data(as: User.self)
    }
    
    func signout() {
        
        try? Auth.auth().signOut()
        userSession = nil
        currentUser = nil
    }
    
    private func uploadUserData(with uid: String, username: String, email: String) async {
        
        let user = User(
            id: uid,
            email: email,
            username: username,
            password: "123",
            dateOfRegistration: Date(),
            dateOfBirthday: Date()
        )
        
        self.currentUser = user
        
        guard let encodedUser = try? Firestore.Encoder().encode(user) else {
            print("Firebase encoder error"); return
        }
        
        try? await Firestore.firestore().collection("users").document(user.id).setData(encodedUser)
    }
}
