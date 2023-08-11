//
//  ContentViewModel.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 11.08.2023.
//

import Foundation
import Combine
import Firebase

final class ContentViewModel: ObservableObject {
    
    private let authService: AuthService = AuthService.shared
    private var anyCancellables: Set<AnyCancellable> = []
    
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        setupSubsrcibers()
    }
    
    func setupSubsrcibers() {
        
        authService.$userSession.sink { [userSession] _ in
            self.userSession = userSession
        }
        .store(in: &anyCancellables)
    }
}
