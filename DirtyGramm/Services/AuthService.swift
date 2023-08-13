//
//  AuthService.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 11.08.2023.
//

import Foundation
import FirebaseAuth

final class AuthService {
    
    @Published var userSession: FirebaseAuth.User?
    
    static let shared = AuthService()
    
    
    init() {
        self.userSession = Auth.auth().currentUser
    }
    
    @MainActor
    func login(with email: String, password: String) async throws {
        
        do {
            let result = try await Auth.auth().signIn(
                withEmail: email,
                password: password
            )
            self.userSession = result.user
            
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
            
        } catch (let error) {
            print("DEBUG: Error when trying to create user: \(error.localizedDescription)")
        }
    }
    
    func loadUserData() async throws {
        
    }
    
    func signout() {
        
        try? Auth.auth().signOut()
        userSession = nil
    }
}
