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
    
    func login(with
               email: String,
               password: String
    ) async throws {
        
    }
    
    func createUser(with
                    username: String,
                    email: String,
                    password: String
    ) async throws {
        
        do {
            
            let result = try await Auth.auth().createUser(
                withEmail: email,
                password: password
            )
            self.userSession = result.user
            
        } catch (let error) {
            
            print("DEBUG: Error wich trying to create user: \(error.localizedDescription)")
        }
    }
    
    func loadUserData() async throws {
        
    }
    
    func signout() {
        
    }
}
