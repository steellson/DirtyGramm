//
//  LoginViewModel.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 13.08.2023.
//

import Foundation
import Firebase

final class LoginViewModel: ObservableObject {
    
    @Published var emailText: String = ""
    @Published var passwordText: String = ""
    
    func signIn() async throws {
        
        do {
            try await Auth.auth().signIn(
                withEmail: emailText,
                password: passwordText
            )
            
        } catch (let error) {
            print("Error when sign in: \(error.localizedDescription)")
        }
    }
}
