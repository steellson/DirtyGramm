//
//  RegistrationViewModel.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 11.08.2023.
//

import Foundation

@MainActor
final class RegistrationViewModel: ObservableObject {
    
    @Published var username: String = ""
    @Published var email: String = ""
    @Published var password: String = ""
    
    func createUser() async throws {
        
        do {
            try await AuthService.shared.createUser(
                with: username,
                email: email,
                password: password)
        } catch (let error) {
            print(error.localizedDescription)
        }
    }
}
