//
//  SearchViewModel.swift
//  DirtyGramm
//
//  Created by Andrew Steellson on 15.08.2023.
//

import Foundation

final class SearchViewModel: ObservableObject {
    
    @Published var users: [User] = []
    
    init() {
        Task {
            try await fetchUsers()
        }
    }
    
    @MainActor
    func fetchUsers() async throws {
        do {
            users = try await UserService.fetchAllUsers()
        } catch (let error) {
            print("DEBUG: SearchViewModel fetching users error: \(error.localizedDescription)")
        }
    }
}
